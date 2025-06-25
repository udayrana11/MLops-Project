# Use an official Python 3.10 image
FROM python:3.10-slim-buster

# Set the working directory
WORKDIR /app

# Copy project files into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Ensure Python finds your modules
ENV PYTHONPATH=/app:/app/src

# Expose the port FastAPI runs on
EXPOSE 5000

# Start FastAPI app
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "5000"]
