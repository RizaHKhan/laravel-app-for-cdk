#!/bin/bash

# If .env does not exist, copy .env.example to .env and generate app key
if [[ ! -f /var/www/app/.env ]]; then
    cp /var/www/app/.env.example /var/www/app/.env
    php artisan generate:key
fi

