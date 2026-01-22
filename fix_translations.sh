#!/bin/bash

# Script pour corriger les dernières références à Easy Appointments dans les fichiers de traduction

echo "Correction des fichiers de traduction..."

# Corriger les références "Easy! Appointments" (avec espace) dans tous les fichiers de langue
find ./application/language -type f -name "translations_lang.php" \
  -exec sed -i '' 's/Easy! Appointments/Bulma/g' {} +

# Corriger les références "Easy!Appointment" (sans s) dans tous les fichiers de langue
find ./application/language -type f -name "translations_lang.php" \
  -exec sed -i '' 's/Easy!Appointment/Bulma/g' {} +

# Corriger les URLs de support group
find ./application/views -type f \( -name "*.php" \) \
  -exec sed -i '' 's|https://groups.google.com/group/easy-appointments|https://groups.google.com/group/bulma|g' {} +

find ./application/views -type f \( -name "*.php" \) \
  -exec sed -i '' 's|https://groups.google.com/forum/#!forum/easy-appointments|https://groups.google.com/forum/#!forum/bulma|g' {} +

echo "Correction des fichiers de traduction terminée!"
