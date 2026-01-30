from pathlib import Path
from pydantic_settings import BaseSettings, SettingsConfigDict
from pydantic import SecretStr

CUR_PATH = Path(__file__).resolve().parent.parent.parent
ENV_PATH = CUR_PATH / ".env"

class Settings(BaseSettings):
    gemini_api_key: SecretStr
    model_config = SettingsConfigDict(env_file=ENV_PATH)

settings = Settings()