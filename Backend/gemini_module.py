from config import settings
from google import genai

class Gemini_Module:
    def __init__(self):
        self.api_key = settings.gemini_api_key.get_secret_value()
        self.client = genai.Client(api_key=self.api_key)
        self.models = ["gemini-3-flash-preview", "gemini-3-pro-preview",
                       "gemini-2.5-flash", "gemini-2.5-flash-lite", 
                       "gemini-2.5-pro", "gemini-2.0-flash",
                       "gemini-2.0-flash-lite"]
    
    def ask_gemini(self, user_prompt: str):
        response = self.client.models.generate_content(
            model=self.models[0],
            contents=user_prompt)
        print(response.text)

gemini = Gemini_Module()
gemini.ask_gemini(user_prompt="What is genai, explain in brief")