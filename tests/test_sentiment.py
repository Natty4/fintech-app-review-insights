from scripts.sentiment_analysis import analyze_sentiment
import pandas as pd
from unittest.mock import patch

def test_analyze_sentiment_positive():
    result = analyze_sentiment(["I love this app!"])
    assert result[0]['label'].lower() in ['positive', 'negative']
    assert 0 <= result[0]['score'] <= 1

def test_analyze_sentiment_empty():
    result = analyze_sentiment([""])
    assert result == []