#!/bin/bash

# Shutdown containers
docker-compose down

# Rebuild containers and turn them on
# Set owner to www-data
docker-compose up -d --build && \
    docker exec proj_web_1 chown www-data:www-data -R /var/www/html

# Log containers
docker-compose logs -f