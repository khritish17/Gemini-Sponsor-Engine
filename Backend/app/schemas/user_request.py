from pydantic import BaseModel

class User_Request(BaseModel):
    user_query: str