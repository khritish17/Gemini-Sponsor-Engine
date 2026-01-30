from google import genai
from google.genai import types


class Gemini_Services:
    def __init__(self, gemini_api_key, response_schema, embed_model, model_name = "gemini-3-flash-preview"):
        self.GEMINI_API_KEY = gemini_api_key
        self.model_name = model_name
        self.embed_model = embed_model
        
        self.client = genai.Client(api_key=self.GEMINI_API_KEY.get_secret_value())
        self.response_schema = response_schema

    
    def ask_gemini(self, user_querry: str):
        response = self.client.models.generate_content(model = self.model_name,
                                                       contents=user_querry,
                                                       config={
                                                           "response_mime_type": "application/json",
                                                           "response_schema": self.response_schema
                                                       }
                                                       )
        return response.parsed
    
    def get_embeding(self, cleaned_query: str):
        response = self.client.models.embed_content(
            model=self.embed_model,
            contents=cleaned_query,
            config=types.EmbedContentConfig(
                task_type="RETRIEVAL_QUERY"
            )
        )
        return response.embeddings[0].values