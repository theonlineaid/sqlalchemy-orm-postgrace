from sqlalchemy.orm import Session
from . import models, schemas

def get_developers(db: Session):
    return db.query(models.Developer).all()

def create_developer(db: Session, dev: schemas.DeveloperCreate):
    new_dev = models.Developer(**dev.dict())
    db.add(new_dev)
    db.commit()
    db.refresh(new_dev)
    return new_dev

def get_projects(db: Session):
    return db.query(models.Project).all()

def create_project(db: Session, proj: schemas.ProjectCreate):
    new_proj = models.Project(**proj.dict())
    db.add(new_proj)
    db.commit()
    db.refresh(new_proj)
    return new_proj
