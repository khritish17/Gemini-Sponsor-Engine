from core.config import settings
from services.gemini_services import Gemini_Services
from schemas.gemini_response_schema import Gemini_Response

GEMINI_API_KEY = settings.gemini_api_key
models = ["gemini-3-flash-preview", "gemini-3-pro-preview", "gemini-2.5-flash",
          "gemini-2.5-flash-lite", "gemini-2.5-pro", "gemini-2.0-flash",
          "gemini-2.0-flash-lite"]
embed_models = ["text-embedding-004"]

# Testing codes: Original code will be using fastAPI to handle request from app

# Starting the gemini service
gemini_services = Gemini_Services(gemini_api_key=GEMINI_API_KEY, embed_model=embed_models[0], model_name=models[0], response_schema=Gemini_Response)

# Response from the Gemini Generative model
response = gemini_services.ask_gemini(user_querry="I want to learn about why Rust is not considered as a Object oriented Langauge")
print(response.response)

# Response from the Gemini Embeding model 
math_vector = gemini_services.get_embeding(response.cleaned_query)
print(math_vector)