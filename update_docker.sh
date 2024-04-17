#!/bin/bash

# Pull changes from GitHub
git pull origin main

# Update Docker Compose environment
docker-compose up --build -d