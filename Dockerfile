# Set the base image
FROM python:latest

# Set the working directory
WORKDIR /app

# Copy the current directory
COPY . /app

# Run a command during build time
RUN pip install -r requirements.txt

# Expose the container port
EXPOSE 8080

# Specify the entrypoint script
ENTRYPOINT ["python", "app/hello-world.py"]