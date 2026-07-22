# Base Image
FROM python:3.11-slim

# Work directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy other project files
COPY . .
CMD ["python", "main.py"]
