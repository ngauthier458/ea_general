#!/bin/bash

# Script pour remplacer toutes les références à Easy Appointment par Bulma

echo "Remplacement des références à Easy Appointment par Bulma..."

# Remplacer "Easy!Appointments" par "Bulma"
find . -type f \( -name "*.php" -o -name "*.js" -o -name "*.json" -o -name "*.yml" -o -name "*.md" -o -name "*.scss" -o -name "*.html" \) \
  -not -path "./vendor/*" \
  -not -path "./node_modules/*" \
  -not -path "./system/*" \
  -not -path "./.git/*" \
  -exec sed -i '' 's/Easy!Appointments/Bulma/g' {} +

# Remplacer "EasyAppointments" par "Bulma"
find . -type f \( -name "*.php" -o -name "*.js" -o -name "*.json" -o -name "*.yml" -o -name "*.md" -o -name "*.scss" -o -name "*.html" \) \
  -not -path "./vendor/*" \
  -not -path "./node_modules/*" \
  -not -path "./system/*" \
  -not -path "./.git/*" \
  -exec sed -i '' 's/EasyAppointments/Bulma/g' {} +

# Remplacer "easyappointments" par "bulma"
find . -type f \( -name "*.php" -o -name "*.js" -o -name "*.json" -o -name "*.yml" -o -name "*.md" -o -name "*.scss" -o -name "*.html" \) \
  -not -path "./vendor/*" \
  -not -path "./node_modules/*" \
  -not -path "./system/*" \
  -not -path "./.git/*" \
  -exec sed -i '' 's/easyappointments/bulma/g' {} +

# Remplacer les URLs spécifiques
find . -type f \( -name "*.php" -o -name "*.js" -o -name "*.json" -o -name "*.yml" -o -name "*.md" -o -name "*.scss" -o -name "*.html" \) \
  -not -path "./vendor/*" \
  -not -path "./node_modules/*" \
  -not -path "./system/*" \
  -not -path "./.git/*" \
  -exec sed -i '' 's|https://easyappointments.org|https://bulma.com|g' {} +

find . -type f \( -name "*.php" -o -name "*.js" -o -name "*.json" -o -name "*.yml" -o -name "*.md" -o -name "*.scss" -o -name "*.html" \) \
  -not -path "./vendor/*" \
  -not -path "./node_modules/*" \
  -not -path "./system/*" \
  -not -path "./.git/*" \
  -exec sed -i '' 's|http://easyappointments.org|https://bulma.com|g' {} +

# Remplacer les références GitHub
find . -type f \( -name "*.php" -o -name "*.js" -o -name "*.json" -o -name "*.yml" -o -name "*.md" -o -name "*.scss" -o -name "*.html" \) \
  -not -path "./vendor/*" \
  -not -path "./node_modules/*" \
  -not -path "./system/*" \
  -not -path "./.git/*" \
  -exec sed -i '' 's|https://github.com/alextselegidis/easyappointments|https://github.com/votre-compte/bulma|g' {} +

# Remplacer les références developers.easyappointments.org
find . -type f \( -name "*.php" -o -name "*.js" -o -name "*.json" -o -name "*.yml" -o -name "*.md" -o -name "*.scss" -o -name "*.html" \) \
  -not -path "./vendor/*" \
  -not -path "./node_modules/*" \
  -not -path "./system/*" \
  -not -path "./.git/*" \
  -exec sed -i '' 's|https://developers.easyappointments.org|https://bulma.com|g' {} +

# Remplacer les références email
find . -type f \( -name "*.php" -o -name "*.js" -o -name "*.json" -o -name "*.yml" -o -name "*.md" -o -name "*.scss" -o -name "*.html" \) \
  -not -path "./vendor/*" \
  -not -path "./node_modules/*" \
  -not -path "./system/*" \
  -not -path "./.git/*" \
  -exec sed -i '' 's|info@easyappointments.org|contact@bulma.com|g' {} +

# Cas spécifiques pour localStorage et autres identifiants en JavaScript
find . -type f \( -name "*.js" \) \
  -not -path "./vendor/*" \
  -not -path "./node_modules/*" \
  -not -path "./system/*" \
  -not -path "./.git/*" \
  -exec sed -i '' "s/'Bulma\./'Bulma./g" {} +

echo "Remplacement terminé!"
echo ""
echo "Note: Vérifiez les fichiers suivants manuellement:"
echo "- composer.json (name et support sections)"
echo "- package.json (name, description, repository)"
echo "- Les fichiers de traduction dans application/language/"
