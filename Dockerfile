# Base Image
FROM python:3.13.14

# Work directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --root-user-action=ignore -r requirements.txt
# Copy other project files
COPY . .
EXPOSE 8080
CMD ["python", "main.py"]
