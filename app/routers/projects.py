from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from .. import crud, schemas
from ..database import SessionLocal

router = APIRouter(prefix="/projects", tags=["Projects"])

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@router.get("/", response_model=list[schemas.ProjectRead])
def read_projects(db: Session = Depends(get_db)):
    print("========= get project hit")
    return crud.get_projects(db)

@router.post("/", response_model=schemas.ProjectCreate)
def create_project(proj: schemas.ProjectCreate, db: Session = Depends(get_db)):
    return crud.create_project(db, proj)
