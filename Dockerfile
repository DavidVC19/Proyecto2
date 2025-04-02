#Creamos la 
FROM php:8.1-apache

#Instalar depenedencias necesarias para PostgressSQL
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql pgsql

#Copiamos todo el contenido del proyecto a el contenedor PHP
COPY . /var/www/html/

# Exponemos al puerto 80
EXPOSE 80
