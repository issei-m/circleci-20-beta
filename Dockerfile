FROM phusion/baseimage:latest

RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    LC_ALL=en_US.UTF-8 add-apt-repository -y ppa:ondrej/php && \
    apt-get update && apt-get install -y \
        nginx \
        php7.1 \
        php7.1-pdo \
        php7.1-mysqlnd \
        php7.1-xml \
        php7.1-curl \
        php7.1-mbstring \
        php7.1-intl \
        php7.1-zip \
        php7.1-fpm \
        php7.1-apcu \
        php7.1-sqlite3 \
        php7.1-xdebug \
        acl && \

    # Install Composer
    curl -s https://getcomposer.org/download/1.3.1/composer.phar > /usr/local/bin/composer && chmod +x /usr/local/bin/composer && \
        composer global require hirak/prestissimo --prefer-dist --no-interaction --optimize-autoloader

