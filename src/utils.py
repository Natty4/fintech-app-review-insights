from langdetect import detect, DetectorFactory, LangDetectException
from deep_translator import GoogleTranslator
import langid

# Ensure consistent language detection
DetectorFactory.seed = 42

def detect_language(text):
    """
    Detects the language of the text using langid.
    Returns 'en' for English or the detected language.
    """
    lang, _ = langid.classify(text)
    # If the detected language is not 'en', we consider it as non-English
    if lang == 'en':
        return 'en'
    else:
        return lang
    

def translate_review_if_needed(text):
    try:
        lang = detect_language(text)
        if lang != 'en':
            print(f"Translating review from {lang} to English: {text}")
            translated = GoogleTranslator(source='auto', target='en').translate(text)
            print(f"Translated review: {translated}")
            return f"{translated} ({text})"
        return text
    except Exception:
        return text  # Return original on failure

def translate_reviews_inplace(df, review_column='review'):
    df[review_column] = df[review_column].apply(translate_review_if_needed)
    return df