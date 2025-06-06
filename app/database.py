import os
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from dotenv import load_dotenv

load_dotenv()

DATABASE_URL = (f"{os.getenv('DATABASE_URL')}")

# DATABASE_URL = os.getenv("DATABASE_URL", "postgresql://devuser:devpass@postgres:5432/devdb")


engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(bind=engine, autocommit=False, autoflush=False)
Base = declarative_base()
