from core.config import settings
from services.gemini_services import Gemini_Services
from schemas.gemini_response_schema import Gemini_Response
from fastapi import FastAPI, Request
from contextlib import asynccontextmanager
import sys

GEMINI_API_KEY = settings.gemini_api_key
models = ["gemini-3-flash-preview", "gemini-3-pro-preview", "gemini-2.5-flash",
          "gemini-2.5-flash-lite", "gemini-2.5-pro", "gemini-2.0-flash",
          "gemini-2.0-flash-lite"]
embed_models = ["text-embedding-004"]

# Testing codes: Original code will be using fastAPI to handle request from app

# # Starting the gemini service
# gemini_services = Gemini_Services(gemini_api_key=GEMINI_API_KEY, embed_model=embed_models[0], model_name=models[0], response_schema=Gemini_Response)

# # Response from the Gemini Generative model
# response = gemini_services.ask_gemini(user_querry="I want to learn about why Rust is not considered as a Object oriented Langauge")
# print(response.response)

# # Response from the Gemini Embeding model 
# math_vector = gemini_services.get_embeding(response.cleaned_query)
# print(math_vector)



# start the gemini services
@asynccontextmanager
async def lifespan(app: FastAPI):
    sys.stdout.write("Gemini Service Started\n")
    app.state.gemini_services = Gemini_Services(gemini_api_key=GEMINI_API_KEY, embed_model=embed_models[0], model_name=models[0], response_schema=Gemini_Response)
    yield
    sys.stdout.write("Gemini Service Shutdown\n")

async def retirve_ad(math_vector):
    return "Feature under construction"


app = FastAPI(lifespan= lifespan)
@app.get("/")
async def home():
    return {"message": "Welcome to GSE app"}

@app.post("/ask_gemini")
async def ask_gemini(user_query: str, request: Request):
    gemini_services = request.app.state.gemini_services
    gemini_response = gemini_services.ask_gemini(user_query=user_query)
    if gemini_response.is_search_query == True:
        math_vector = gemini_services.get_embeding(gemini_response.cleaned_query)
    return gemini_response.response


