FROM php:8.2-fpm

# Install dependencies
RUN apt-get update -y && apt-get install -y \
    build-essential \
    git \
    zip \
    unzip \
    zsh \
    curl \
    wget \
    vim \
    libmagickwand-dev \
    bash-completion \
    exa

# Install imagick extension using PECL
RUN pecl install imagick xdebug redis

RUN docker-php-ext-install pdo_mysql

# Enable imagick extension
RUN docker-php-ext-enable imagick pdo_mysql xdebug redis

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set the working directory
WORKDIR /var/www

#Set default bash
RUN chsh -s /usr/bin/zsh
