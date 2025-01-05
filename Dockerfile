# Use a base image with Python
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any necessary dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on (optional, depending on your app)
EXPOSE 5000

# Run the Python application
CMD ["python", "app.py"]
