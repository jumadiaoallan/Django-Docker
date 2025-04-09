# Use official Python image
FROM python:3.13

# Install Git and required packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    git python3-pip \
    && python3 -m pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir django \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set working directory
WORKDIR /code

# Install dependencies
COPY requirements.txt /code/
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy project files
COPY . /code/

# Install pre-commit
RUN pip install pre-commit && pre-commit install-hooks
