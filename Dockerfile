# Base Image
FROM python:3.13.14

# Work directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# Copy other project files
COPY . .
CMD ["python", "main.py"]
