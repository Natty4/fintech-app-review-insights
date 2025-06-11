import psycopg2
import os
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()


# Function to connect to PostgreSQL (initial connection to 'postgres' database)
def create_connection(dbname="postgres"):
    connection = psycopg2.connect(
        dbname=dbname,  # Default to 'postgres' to allow DB creation
        user=os.getenv('DB_USER', 'username'),
        password=os.getenv('DB_PASSWORD', 'password'),
        host=os.getenv('DB_HOST', 'localhost'),
        port=os.getenv('DB_PORT', '5432')
    )
    return connection

# Function to create the 'bank_reviews' database
def create_database():
    connection = create_connection()
    connection.autocommit = True  # To avoid needing to commit after creating a DB
    cursor = connection.cursor()

    try:
        cursor.execute("CREATE DATABASE bank_reviews;")
        print("Database 'bank_reviews' created successfully.")
    except Exception as e:
        print(f"Error creating database: {e}")
    finally:
        cursor.close()
        connection.close()
        
    

# Function to create tables in the 'bank_reviews' database
def create_tables():
    connection = create_connection(dbname="bank_reviews")
    cursor = connection.cursor()

    # Create 'banks' table
    cursor.execute("""
    CREATE TABLE IF NOT EXISTS banks (
        id SERIAL PRIMARY KEY,
        name VARCHAR(100) UNIQUE NOT NULL
    );
    """)

    # Create 'reviews' table
    cursor.execute("""
    CREATE TABLE IF NOT EXISTS reviews (
        id SERIAL PRIMARY KEY,
        bank INTEGER REFERENCES banks(id),
        review TEXT NOT NULL,
        rating INTEGER,
        sentiment_label VARCHAR(10),
        sentiment_score FLOAT,
        theme VARCHAR(100),
        date DATE
    );
    """)

    print("Tables 'banks' and 'reviews' created successfully.")
    cursor.close()
    connection.commit()
    connection.close()

# Main execution flow
if __name__ == "__main__":
    try:
        # Create database
        create_database()

        # Create tables in the 'bank_reviews' database
        create_tables()

        print("Database setup completed successfully!")

    except Exception as e:
        print(f"An error occurred: {e}")