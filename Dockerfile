# Use official Python runtime as a parent image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy current directory contents into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make port available to the world outside this container
ENV PORT 8080
EXPOSE 8080

# Run the application
CMD ["python", "main.py"]
