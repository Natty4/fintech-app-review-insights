import pandas as pd
from pathlib import Path
import sys
sys.path.append(str(Path(__file__).resolve().parents[1] / "src"))
from utils import translate_reviews_inplace

def load_raw_data(path):
    return pd.read_csv(path)

def clean_reviews(df):
    df['review'] = df['review'].astype(str).str.strip()
    df['bank'] = df['bank'].astype(str).str.strip()
    df['date'] = pd.to_datetime(df['date'], errors='coerce').dt.date

    df = df.dropna(subset=['review', 'rating', 'date', 'bank'])
    df = df.drop_duplicates(subset=['review', 'rating', 'date', 'bank'])

    df['source'] = 'Google Play'
    return df

def balance_reviews(df, target_count=400):
    balanced_df = (
        pd.concat([
            group.sample(n=min(len(group), target_count), random_state=42)
            for _, group in df.groupby('bank')
        ])
        .reset_index(drop=True)
    )
    return balanced_df

def report_balance(df):
    counts = df['bank'].value_counts()
    print("\n📊 Review count per bank after balancing:")
    print(counts.to_string())

def save_cleaned_data(df, output_path):
    df.to_csv(output_path, index=False, columns=['review', 'rating', 'date', 'bank', 'source'])
    print(f"✅ Cleaned and translated data saved to {output_path}")

if __name__ == "__main__":
    raw_path = Path("./data/raw_reviews.csv")
    clean_path = Path("./data/cleaned_reviews.csv")

    df_raw = load_raw_data(raw_path)
    df_clean = clean_reviews(df_raw)
    df_balanced = balance_reviews(df_clean, target_count=400)
    df_translated = translate_reviews_inplace(df_balanced)
    save_cleaned_data(df_translated, clean_path)
    report_balance(df_translated)