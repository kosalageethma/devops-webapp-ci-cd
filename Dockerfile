# Use lightweight Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Run as non-root for security
USER nobody

# Expose port
EXPOSE 80

# Start the Flask app
CMD ["python", "app.py"]
