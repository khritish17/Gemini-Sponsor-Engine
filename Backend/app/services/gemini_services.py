from google import genai


class Gemini_Services:
    def __init__(self, gemini_api_key, response_schema, model_name = "gemini-3-flash-preview"):
        self.GEMINI_API_KEY = gemini_api_key
        self.model_name = model_name
        
        self.client = genai.Client(api_key=self.GEMINI_API_KEY.get_secret_value())
        self.response_schema = response_schema

    
    def ask_gemini(self, user_querry):
        response = self.client.models.generate_content(model = self.model_name,
                                                       contents=user_querry,
                                                       config={
                                                           "response_mime_type": "application/json",
                                                           "response_schema": self.response_schema
                                                       }
                                                       )
        return response.parsed