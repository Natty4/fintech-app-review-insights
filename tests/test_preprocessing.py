import pandas as pd
from pandas.testing import assert_frame_equal
import pytest
from scripts.preprocess import clean_reviews, balance_reviews

@pytest.fixture
def sample_df():
    return pd.DataFrame({
        'review': ['  great app ', 'bad experience', 'Great App'],
        'rating': [5, 1, 5],
        'date': ['2024-01-01', '2024-02-01', 'invalid date'],
        'bank': ['Commercial Bank of Ethiopia', 'Commercial Bank of Ethiopia', 'Commercial Bank of Ethiopia']
    })

def test_clean_reviews(sample_df):
    cleaned = clean_reviews(sample_df)
    assert len(cleaned) == 2  # One row with invalid date should be dropped
    assert cleaned['review'].iloc[0] == 'great app'
    assert cleaned['source'].iloc[0] == 'Google Play'

def test_balance_reviews():
    df = pd.DataFrame({
        'review': ['review'] * 450 + ['review'] * 430,
        'rating': [5] * 880,
        'date': pd.to_datetime(['2024-01-01'] * 880).date,
        'bank': ['Commercial Bank of Ethiopia'] * 450 + ['Bank of Abyssinia'] * 430
    })
    balanced = balance_reviews(df, target_count=400)
    assert all(balanced['bank'].value_counts() == 400)