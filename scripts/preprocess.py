import pandas as pd
from pathlib import Path

def load_raw_data(path):
    return pd.read_csv(path)

def clean_reviews(df):
    # Strip leading/trailing spaces
    df['review'] = df['review'].astype(str).str.strip()
    df['bank'] = df['bank'].astype(str).str.strip()

    # Normalize dates
    df['date'] = pd.to_datetime(df['date'], errors='coerce').dt.date

    # Drop missing and duplicate entries
    df = df.dropna(subset=['review', 'rating', 'date', 'bank'])
    df = df.drop_duplicates(subset=['review', 'rating', 'date', 'bank'])

    # Standardize source column
    df['source'] = 'Google Play'

    return df

def balance_reviews(df, target_count=400):
    balanced_df = (
        pd.concat([
            group.sample(n=target_count, random_state=42)
            for _, group in df.groupby('bank')
        ])
        .reset_index(drop=True)
    )
    return balanced_df

def save_cleaned_data(df, output_path):
    df.to_csv(output_path, index=False)
    print(f"✅ Cleaned and balanced data saved to {output_path}")

if __name__ == "__main__":
    raw_path = Path("./data/raw_reviews.csv")
    clean_path = Path("./data/cleaned_reviews.csv")

    df_raw = load_raw_data(raw_path)
    df_clean = clean_reviews(df_raw)
    df_balanced = balance_reviews(df_clean, target_count=400)
    save_cleaned_data(df_balanced, clean_path)