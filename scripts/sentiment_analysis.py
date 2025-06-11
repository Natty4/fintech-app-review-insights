from transformers import pipeline
import pandas as pd
from tqdm import tqdm
from pathlib import Path
import sys
sys.path.append(str(Path(__file__).resolve().parents[1] / "src"))
# Ensure tqdm is configured to show progress bars

tqdm.pandas()  # enable progress bar for apply()

classifier = pipeline("sentiment-analysis", model="distilbert-base-uncased-finetuned-sst-2-english")

def load_cleaned_data(path):
    return pd.read_csv(path)

def analyze_sentiment(texts):
    """
    Run sentiment analysis using DistilBERT. Skips empty or whitespace-only texts.
    """
    try:
        texts = [t for t in texts if t and t.strip()]  # Skip empty/blank
        if not texts:
            return []
        return classifier(texts)
    except Exception as e:
        print(f"Error analyzing sentiment: {e}")
        return []


# Aggregation Logic
def aggregate_sentiment_by_bank_and_rating(df):
    """
    Aggregates sentiment by bank and rating, calculating mean sentiment and most common sentiment.
    """
    sentiment_agg = df.groupby(['bank', 'rating']).agg(
        mean_sentiment=('sentiment_score', 'mean'),
        most_common_sentiment=('sentiment_label', lambda x: x.mode()[0])
    ).reset_index()
    
    return sentiment_agg

def save_aggregated_sentiment_data(df, path):
    """
    Saves the aggregated sentiment data to a CSV file.
    """
    df.to_csv(path, index=False)
    print(f"✅ Aggregated sentiment data saved to {path}")


# Function to enrich reviews with sentiment
def enrich_reviews_with_sentiment(df, batch_size=100):
    """
    Enrich reviews with sentiment analysis.
    """
    sentiments = []
    for i in tqdm(range(0, len(df), batch_size), desc="🔍 Analyzing Sentiment"):
        batch_texts = df['review'].iloc[i:i + batch_size].tolist()
        
        batch_sentiments = []
        for text, rating in zip(batch_texts, df['rating'].iloc[i:i + batch_size]):
            result = analyze_sentiment([text])[0]
            sentiment_label = result['label'].lower()  
            batch_sentiments.append({'label': sentiment_label, 'score': result['score']})        
        sentiments.extend(batch_sentiments)
    
    df['sentiment_label'] = [result['label'] for result in sentiments]
    df['sentiment_score'] = [result['score'] if result['score'] is not None else 0.0 for result in sentiments]
    
    return df

if __name__ == "__main__":
    input_path = './data/cleaned_reviews.csv'
    output_path = './data/enriched_reviews.csv'

    # Load cleaned reviews
    df_clean = pd.read_csv(input_path)
    
    # Enrich with sentiment
    df_enriched = enrich_reviews_with_sentiment(df_clean)
    
    # Save enriched reviews with sentiment
    df_enriched.to_csv(output_path, index=False)
    print(f"✅ Enriched data saved to {output_path}")

    # Now aggregate sentiment by bank and rating
    sentiment_agg = aggregate_sentiment_by_bank_and_rating(df_enriched)
    save_aggregated_sentiment_data(sentiment_agg, './data/sentiment_aggregated.csv')
    
    