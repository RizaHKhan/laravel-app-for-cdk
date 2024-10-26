#!/bin/bash

cd /var/www/app
php artisan config:cache
php artisan route:cache
php artisan view:cache

cd /var/www
sudo chmod -R 777 /var/www
sudo chown -R nginx:nginx /var/www

sudo systemctl restart nginx
sudo systemctl enable nginx
