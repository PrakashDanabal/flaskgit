FROM python:3.10-slim-buster

WORKDIR /app

# Install dependencies
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# Copy your application code
COPY . .

# Set the environment variable for the port (default to 8080)
ENV PORT 8080

# Expose the port
EXPOSE $PORT

# Run the Flask development server
CMD flask run --host=0.0.0.0 --port=$PORT
