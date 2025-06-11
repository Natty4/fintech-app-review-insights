import spacy
import pandas as pd
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.cluster import KMeans
from sklearn.preprocessing import normalize
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize
from tqdm import tqdm
import re

# Enable progress bar for pandas apply
tqdm.pandas()

# Load spaCy model
nlp = spacy.load('en_core_web_sm')

# Download stopwords if not already present
import nltk
nltk.download('stopwords')
nltk.download('punkt')

# Function to clean and preprocess the text
def preprocess_text(text):
    """
    Preprocess the text by removing stopwords, lemmatizing, and cleaning unwanted characters.
    """
    # Remove non-alphanumeric characters (punctuation, numbers)
    text = re.sub(r'[^a-zA-Z\s]', '', text, re.I)
    
    # Tokenization
    doc = nlp(text.lower())  # Use spaCy's tokenizer
    
    # Lemmatization and stopword removal
    processed_tokens = [token.lemma_ for token in doc if token.is_alpha and not token.is_stop]
    
    return ' '.join(processed_tokens)

# Function to perform TF-IDF and clustering for theme extraction
def extract_keywords_and_themes(df, n_clusters=5, min_df=5, max_df=0.85):
    df['processed_review'] = df['review'].progress_apply(preprocess_text)

    tfidf_vectorizer = TfidfVectorizer(max_df=max_df, min_df=min_df, stop_words='english')
    tfidf_matrix = tfidf_vectorizer.fit_transform(df['processed_review'])

    kmeans = KMeans(n_clusters=n_clusters, random_state=42)
    kmeans.fit(tfidf_matrix)

    feature_names = tfidf_vectorizer.get_feature_names_out()
    top_keywords = {
        i: [feature_names[index] for index in kmeans.cluster_centers_.argsort()[:, ::-1][i, :10]]
        for i in range(n_clusters)
    }

    themes = {
        0: 'Account Access Issues',
        1: 'Transaction Performance',
        2: 'User Interface & Experience',
        3: 'Customer Support',
        4: 'Feature Requests'
    }
    
    assigned_themes = [themes[i] for i in kmeans.predict(tfidf_matrix)]
    df['theme'] = assigned_themes

    return df, top_keywords

# Function to save the enriched data (including themes)
def save_enriched_data_with_themes(df, path):
    df.to_csv(path, index=False)
    print(f"✅ Thematic-enriched data saved to {path}")

if __name__ == "__main__":
    input_path = './data/enriched_reviews.csv'  # Assuming enriched reviews with sentiment are already loaded
    output_path = './data/enriched_reviews_with_themes.csv'

    # Load the enriched data with sentiment
    df_enriched = pd.read_csv(input_path)
    
    # Perform thematic analysis
    df_with_themes, top_keywords = extract_keywords_and_themes(df_enriched)
    
    # Add review_id if not present
    if 'review_id' not in df_with_themes.columns:
        df_with_themes['review_id'] = df_with_themes.index + 1  # sequential IDs

    # Save enriched data with themes and review_id
    save_enriched_data_with_themes(df_with_themes, output_path)

    # Save top keywords per theme to JSON
    import json
    with open('./data/top_keywords_by_theme.json', 'w') as f:
        json.dump(top_keywords, f, indent=4)
    print("✅ Top keywords saved to top_keywords_by_theme.json")

    # Save theme distribution by bank
    theme_dist = df_with_themes.groupby(['bank', 'theme']).size().reset_index(name='count')
    theme_dist.to_csv('./data/theme_distribution_by_bank.csv', index=False)
    print("✅ Theme distribution by bank saved to theme_distribution_by_bank.csv")

    # Optional: Print theme summary
    print("\n📊 Top Keywords by Theme:")
    for theme_id, keywords in top_keywords.items():
        print(f"Theme {theme_id}: {keywords}")
        
        
        
        
themes = {
    'Performance Issues': ['slow', 'lag', 'delay', 'crash', 'error'],
    'Account Access': ['login', 'password', 'authentication', 'access', 'account'],
    'User Interface': ['UI', 'design', 'layout', 'user interface', 'appearance'],
    'Customer Support': ['support', 'help', 'service', 'customer service', 'assist'],
    'Feature Requests': ['feature', 'request', 'option', 'add', 'improvement']
}