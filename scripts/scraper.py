import pandas as pd
from google_play_scraper import Sort, reviews
from datetime import datetime
import os
import sys, pathlib

sys.path.append(str(pathlib.Path(__file__).resolve().parent.parent))

def fetch_reviews(app_id, bank_name, lang='en', count=520):
    all_reviews = []
    try:
        result, _ = reviews(
            app_id,
            lang=lang,
            country='et', 
            sort=Sort.NEWEST,
            count=count
        )
        for r in result:
            all_reviews.append({
                'review': r['content'],
                'rating': r['score'],
                'date': r['at'].strftime('%Y-%m-%d'),
                'bank': bank_name,
                'source': 'Google Play'
            })
        return pd.DataFrame(all_reviews)
    except Exception as e:
        print(f"Failed to fetch reviews for {bank_name}: {e}")
        return pd.DataFrame()

if __name__ == "__main__":
    # Bank app package names
    apps = {
        "Commercial Bank of Ethiopia": "com.combanketh.mobilebanking",
        "Bank of Abyssinia": "com.boa.boaMobileBanking",
        "Dashen Bank": "com.dashen.dashensuperapp"
    }

    all_dfs = []
    for bank, app_id in apps.items():
        print(f"Fetching reviews for {bank}")
        df = fetch_reviews(app_id, bank)
        all_dfs.append(df)

    all_reviews_df = pd.concat(all_dfs, ignore_index=True)
    all_reviews_df.drop_duplicates(subset=["review", "bank"], inplace=True)

    os.makedirs("./data", exist_ok=True)
    all_reviews_df.to_csv("./data/raw_reviews.csv", index=False)
    print(f"Saved {len(all_reviews_df)} total reviews to data/raw_reviews.csv")