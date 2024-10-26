#!/bin/bash

if [[ ! -f /var/www/app/.env ]]; then
    cp /var/www/app/.env.example /var/www/app/.env

    cd /var/www/app
    php artisan key:generate
fi

cd /var/www/app
php artisan config:cache
php artisan route:cache
php artisan view:cache

cd /var/www
sudo chmod -R 777 /var/www
sudo chown -R nginx:nginx /var/www

sudo systemctl restart nginx
sudo systemctl enable nginx
