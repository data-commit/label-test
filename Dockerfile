# Use the official Alpine base image
FROM alpine:latest

# Set the maintainer label
LABEL maintainer="Your Name <your.email@example.com>"

# Update the package repository and install necessary packages
RUN apk update && \
    apk add --no-cache \
    bash \
    curl \
    git \
    openssh

# Set the working directory
WORKDIR /app

# Copy the application files to the working directory
COPY . /app

# Set the entrypoint command
ENTRYPOINT ["bash", "start.sh"]


