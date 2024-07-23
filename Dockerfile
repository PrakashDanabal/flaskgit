FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . /app
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]