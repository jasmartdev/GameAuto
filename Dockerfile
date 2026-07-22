# Base Image
FROM python:3.13.14
RUN pip install --root-user-action=ignore -r requests
CMD ["python", "main.py"]
