FROM php:7.4-fpm

# Arguments defined in docker-compose.yml
ARG API_USER_USERNAME
ARG API_USER_UID

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpq-dev \
    libzip-dev \
    sqlite3 \
    git

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install zip pdo pdo_pgsql bcmath pgsql exif

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create system user to run Composer and Artisan Commands
RUN useradd -G www-data,root -u $API_USER_UID -d /home/$API_USER_USERNAME $API_USER_USERNAME
RUN mkdir -p /home/$API_USER_USERNAME/.composer && \
    chown -R $API_USER_USERNAME:$API_USER_USERNAME /home/$API_USER_USERNAME

# Set working directory
WORKDIR /var/www

USER $API_USER_USERNAME
