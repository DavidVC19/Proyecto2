# imgen
FROM php:8.1-apache 
#instalar las dependencias necesarias para trabajar con postgeSQL

RUN apt-get update && apt-get install -y \
    libpq-dev \
    && doctor-php-ext-install pdo pdo_pgsql pgsql

# copiamos todo el contenido de mi proyecto a el contenedor de php

COPY . /var/www/html/ 

# Exponemos el puerto 80
EXPOSE 80
   