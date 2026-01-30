from pydantic import BaseModel, Field

class Gemini_Response(BaseModel):
    is_search_query: bool = Field(description="Set to True if the user is describing content or asking for a sponsor. Set to False for greetings or off-topic chat.")
    response: str = Field(description="Response according to the users querry")
    cleaned_query: str = Field(description="A dense, keyword-rich sentence for vector embedding "
    "(e.g., 'Tech creator looking for VPN or SaaS security sponsors').")
    category: str = Field(description="One-word category for hard filtering (e.g., Tech, Finance).")

