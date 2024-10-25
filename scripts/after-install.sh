#!/bin/bash

cd /var/www/app
php artisan config:cache
php artisan route:cache
php artisan view:cache

