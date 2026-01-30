from core.config import settings
from services.gemini_services import Gemini_Services
from schemas.gemini_response_schema import Gemini_Response

GEMINI_API_KEY = settings.gemini_api_key
models = ["gemini-3-flash-preview", "gemini-3-pro-preview", "gemini-2.5-flash",
          "gemini-2.5-flash-lite", "gemini-2.5-pro", "gemini-2.0-flash",
          "gemini-2.0-flash-lite"]

# Testing codes: Original code will be using fastAPI to handle request from app
gemini_services = Gemini_Services(gemini_api_key=GEMINI_API_KEY, model_name=models[0], response_schema=Gemini_Response)
response = gemini_services.ask_gemini(user_querry="I want to learn about why Rust is not considered as a Object oriented Langauge")
print(response)