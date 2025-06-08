import pandas as pd
from unittest.mock import patch
from datetime import datetime
from scripts.scraper import fetch_reviews


@patch('scripts.scraper.reviews')
def test_fetch_reviews_success(mock_reviews):
    mock_reviews.return_value = (
        [{'content': 'Good app', 'score': 5, 'at': datetime(2024, 1, 1)}], None
    )
    df = fetch_reviews('com.example.app', 'Bank X')
    assert isinstance(df, pd.DataFrame)
    assert df.shape[0] == 1
    assert df.iloc[0]['review'] == 'Good app'
    assert df.iloc[0]['rating'] == 5
    assert df.iloc[0]['bank'] == 'Bank X'
    assert df.iloc[0]['source'] == 'Google Play'

@patch('scripts.scraper.reviews', side_effect=Exception("API failed"))
def test_fetch_reviews_failure(mock_reviews):
    df = fetch_reviews('com.fake.app', 'Fake Bank')
    assert df.empty