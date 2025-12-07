# 1. Use official Python image
FROM python:3.12-slim

# 2. Set work directory
WORKDIR /app

# 3. Copy requirements and install
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy the FastAPI app
COPY . .

# 5. Expose port
EXPOSE 8000

# 6. Run FastAPI server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
