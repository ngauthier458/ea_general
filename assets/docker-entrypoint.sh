#!/bin/bash

# 1. On prépare la variable Bash AVANT le cat
DB_NAME_VALUE=${DB_NAME:-"bulma"}

# 2. On génère le fichier PHP proprement
cat <<EOF >/var/www/html/config.php
<?php
class Config {
    const BASE_URL              = '${BASE_URL}';
    const LANGUAGE              = 'french';
    const DEBUG_MODE            = true;
    const DB_HOST               = '${DB_HOST}';
    const DB_NAME               = '${DB_NAME_VALUE}'; 
    const DB_USERNAME           = '${DB_USERNAME}';
    const DB_PASSWORD           = '${DB_PASSWORD}';
    const GOOGLE_SYNC_FEATURE   = false;
    const GOOGLE_CLIENT_ID      = '';
    const GOOGLE_CLIENT_SECRET  = '';
}
EOF

# ... (Le reste de ton script pour l'email est correct) ...

# Start Apache
apache2-foreground