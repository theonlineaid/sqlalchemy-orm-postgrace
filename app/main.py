from fastapi import FastAPI
from .routers import developers, projects

app = FastAPI()

app.include_router(developers.router)
app.include_router(projects.router)
