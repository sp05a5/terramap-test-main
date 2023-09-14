# Use the official Ubuntu 20.04 image as the base image
FROM ubuntu:20.04

# Set environment variables to avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install a basic text editor (nano) for demonstration
RUN apt-get update && apt-get install -y nano

# Create and set the working directory
WORKDIR /app

# Create a simple shell script to print "Hello, World!"
RUN echo '#!/bin/bash' > hello.sh && \
    echo 'echo "Hello, World!"' >> hello.sh && \
    chmod +x hello.sh

# Run the shell script when the container starts
CMD ["./hello.sh"]

