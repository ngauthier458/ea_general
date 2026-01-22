
FROM php:8.2-apache

ARG VERSION

ENV BASE_URL="http://localhost"
ENV LANGUAGE="english"
ENV DEBUG_MODE="FALSE"
ENV DB_HOST="db"
ENV DB_NAME="easyappointments"
ENV DB_USERNAME="root"
ENV DB_PASSWORD="secret"
ENV GOOGLE_SYNC_FEATURE=FALSE
ENV GOOGLE_PRODUCT_NAME=""
ENV GOOGLE_CLIENT_ID=""
ENV GOOGLE_CLIENT_SECRET=""
ENV GOOGLE_API_KEY=""
EXPOSE 80
WORKDIR /var/www/html

# On installe les dépendances système et PHP extensions
RUN apt-get update \
    && apt-get install -y libfreetype-dev libjpeg62-turbo-dev libpng-dev unzip wget curl \
    && curl -sSL https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions -o - | sh -s \
      gd intl ldap mbstring mysqli xdebug pdo pdo_mysql xml zip exif gettext bcmath \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# --- LA MODIFICATION EST ICI ---
# Au lieu de télécharger le ZIP, on copie TON dossier actuel dans l'image
COPY . /var/www/html/

# On s'assure que l'entrypoint est bien exécutable
COPY ./assets/docker-entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# Fix des permissions
RUN chown -R www-data:www-data /var/www/html

ENTRYPOINT ["docker-entrypoint.sh"]