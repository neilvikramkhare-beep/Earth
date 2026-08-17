# Use Python 3.10 slim as base
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy playground requirements
COPY playground/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy Earth Compiler and Standard Library
COPY earth_compiler.py .
COPY SL_Packages ./SL_Packages

# Copy playground files
COPY playground ./playground

# Set environment variables
ENV PORT=8080

# Expose port
EXPOSE 8080

# Run the web server using gunicorn for production
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "--chdir", "playground", "app:app"]
