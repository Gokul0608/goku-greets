from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello from FastAPI inside Docker!"}

@app.get("/gokul")
def greet():
    return {"message": "Hey Gokul, Docker is running successfully!"}
