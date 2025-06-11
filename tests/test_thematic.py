from scripts.thematic_analysis import preprocess_text, save_enriched_data_with_themes
import pandas as pd


def test_preprocess_text():
    text = "Logging in is very slow and buggy!!"
    processed = preprocess_text(text)
    assert "login" in processed or "log" in processed  # lemmatized
    assert "very" not in processed  # stopword removed


def test_save_enriched_data_with_themes(tmp_path):
    df = pd.DataFrame({
        'review': ["Great app!", "Needs improvement."]
    })
    output_file = tmp_path / "enriched_reviews_with_themes.csv"
    save_enriched_data_with_themes(df, output_file)
    assert output_file.exists()