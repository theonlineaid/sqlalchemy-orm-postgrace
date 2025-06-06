from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from .. import crud, schemas
from ..database import SessionLocal

router = APIRouter(prefix="/developers", tags=["Developers"])

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@router.get("/", response_model=list[schemas.DeveloperRead])
def read_devs(db: Session = Depends(get_db)):
    return crud.get_developers(db)

@router.post("/", response_model=schemas.DeveloperCreate)
def create_dev(dev: schemas.DeveloperCreate, db: Session = Depends(get_db)):
    return crud.create_developer(db, dev)
