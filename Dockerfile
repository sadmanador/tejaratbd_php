FROM php:8.2-apache

# Enable Apache mod_rewrite (commonly needed)
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy project files (initial copy; runtime changes come from volume)
COPY . /var/www/html

# Set proper permissions (safe for local dev)
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
