# Use an official Python 3.10 image from Docker Hub
FROM python:3.10-slim-buster

# Set the working directory
WORKDIR /app

# Copy your application code
COPY . /app

# Install the dependencies
RUN pip install -r requirements.txt

# Expose the port FastAPI will run on
EXPOSE 5000

# Set Python path so 'src' is found
ENV PYTHONPATH=/app

# Run FastAPI server using uvicorn
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "5000"]
