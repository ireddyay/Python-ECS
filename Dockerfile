# Use official Python image
FROM python:3.13-alpine

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

# Expose port
EXPOSE 80

# Run the app
CMD ["python", "app.py"]
