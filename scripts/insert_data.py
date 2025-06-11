import os
import psycopg2
import pandas as pd
from psycopg2.extras import execute_values
from dotenv import load_dotenv

load_dotenv()


DB_PARAMS = {
    'dbname': 'bank_reviews',
    'user': os.getenv('DB_USER', 'username'),
    'password': os.getenv('DB_PASSWORD', 'password'),
    'host': os.getenv('DB_HOST', 'localhost'),
    'port': os.getenv('DB_PORT', '5432')
}


def get_connection():
    return psycopg2.connect(**DB_PARAMS)


def get_or_create_bank_id(cursor, bank_name):
    cursor.execute("SELECT id FROM banks WHERE name = %s;", (bank_name,))
    result = cursor.fetchone()
    if result:
        return result[0]
    else:
        cursor.execute("INSERT INTO banks (name) VALUES (%s) RETURNING id;", (bank_name,))
        return cursor.fetchone()[0]

def insert_reviews(csv_path: str):
    df = pd.read_csv(csv_path)
    
    # Ensure required columns are present
    required_cols = ['bank', 'review', 'rating', 'sentiment_label', 'sentiment_score', 'theme', 'date']
    
    if not all(col in df.columns for col in required_cols):
        raise ValueError(f"Missing one or more required columns: {required_cols}")

    conn = get_connection()
    cursor = conn.cursor()

    try:
        for _, row in df.iterrows():
            bank_id = get_or_create_bank_id(cursor, row['bank'])

            cursor.execute("""
                INSERT INTO reviews (
                    bank, review, rating,
                    sentiment_label, sentiment_score,
                    theme, date
                ) VALUES (%s, %s, %s, %s, %s, %s, %s);
            """, (
                bank_id,
                row['review'],
                int(row['rating']) if not pd.isna(row['rating']) else None,
                row['sentiment_label'],
                float(row['sentiment_score']) if not pd.isna(row['sentiment_score']) else None,
                row['theme'],
                pd.to_datetime(row['date']).date() if not pd.isna(row['date']) else None
            ))

        conn.commit()
        print("✅ All reviews inserted successfully.")

    except Exception as e:
        conn.rollback()
        print(f"❌ Error inserting reviews: {e}")

    finally:
        cursor.close()
        conn.close()

if __name__ == "__main__":
    csv_file_path = "data/enriched_reviews_with_themes.csv" 
    insert_reviews(csv_file_path)