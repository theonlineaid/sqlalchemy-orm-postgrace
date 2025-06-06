from pydantic import BaseModel
from typing import List, Optional

class ProjectRead(BaseModel):
    id: int
    name: str
    developer_id: int
    status: str

    class Config:
        from_attributes = True  # for Pydantic v2

class DeveloperRead(BaseModel):
    id: int
    name: str
    organization: str
    experience_years: int
    projects: List[ProjectRead] = []

    class Config:
        from_attributes = True

class ProjectCreate(BaseModel):
    name: str
    developer_id: int

class DeveloperCreate(BaseModel):
    name: str
    organization: str
    experience_years: int
    projects: Optional[List[ProjectCreate]] = []
