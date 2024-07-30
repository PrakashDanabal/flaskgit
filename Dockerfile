FROM python:3.10-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY   
 . .

# Environment variable   
 for the port
ENV PORT 8080

# Expose the port
EXPOSE $PORT

# Run the Flask development server
CMD flask run --host=0.0.0.0 --port=$PORT
