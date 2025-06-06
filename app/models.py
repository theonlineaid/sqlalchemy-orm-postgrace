from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import relationship
from app.database import Base

class Project(Base):
    __tablename__ = "projects"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String)
    developer_id = Column(Integer, ForeignKey("developers.id"))
    status = Column(String)

    developer = relationship("Developer", back_populates="projects")

class Developer(Base):
    __tablename__ = "developers"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String)
    organization = Column(String)
    experience_years = Column(Integer)

    projects = relationship("Project", back_populates="developer")
