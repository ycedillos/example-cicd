# Use official Python base image
FROM python:3.11.3-slim

# Set working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Set environment variables (optional)
ENV PYTHONUNBUFFERED=1

# Specify default command (replace 'app.py' with your main file)
CMD ["python", "manage.py", "runserver"]