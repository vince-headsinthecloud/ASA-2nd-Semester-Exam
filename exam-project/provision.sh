#!/bin/bash

# Update package lists
sudo apt update

# Install Apache
sudo apt install -y apache2

# Install MySQL
sudo apt install mysql-server -y

# Install PHP
sudo apt install php -y

#Install PHP Modules for Apache2 and MySQL
sudo apt install php libapache2-mod-php php-mysql -y

#Restart apache2 to take effect of configuration changes
sudo systemctl restart apache2

#Install Composer dependency manager on Linux
sudo apt install curl php-cli php-zip unzip
sudo php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
COMPOSER_ALLOW_SUPERUSER=1
composer --version

#Install Composer dependency manager on Linux
sudo apt install nodejs -y
node -v
npm -v

#Clone PHP Application and configure packages.
git clone https://github.com/laravel/laravel.git
cd laravel
sudo composer install
sudo npm install
sudo npm run dev
mv .env.example .env
php artisan key:generate -y
php artisan serve