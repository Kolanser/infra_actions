FROM python:3.7-slim
WORKDIR /app
COPY .. .
RUN pip install -r requirements.txt
WORKDIR /app/infra_project/
CMD ["python", "manage.py", "runserver", "0:5000"]
