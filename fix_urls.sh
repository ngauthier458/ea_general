#!/bin/bash

# Script pour corriger les URLs qui pointent vers bulma.org (framework CSS)
# et les remplacer par vos propres URLs

echo "Correction des URLs..."

# Remplacer bulma.org par une URL temporaire ou votre domaine
# Vous devrez ajuster ces URLs avec votre propre domaine
find . -type f \( -name "*.php" -o -name "*.js" -o -name "*.json" -o -name "*.yml" -o -name "*.md" -o -name "*.scss" -o -name "*.html" \) \
  -not -path "./vendor/*" \
  -not -path "./node_modules/*" \
  -not -path "./system/*" \
  -not -path "./.git/*" \
  -exec sed -i '' 's|https://bulma.org|https://votre-domaine.com|g' {} +

# Corriger les références GitHub
find . -type f \( -name "*.php" -o -name "*.js" -o -name "*.json" -o -name "*.yml" -o -name "*.md" -o -name "*.scss" -o -name "*.html" \) \
  -not -path "./vendor/*" \
  -not -path "./node_modules/*" \
  -not -path "./system/*" \
  -not -path "./.git/*" \
  -exec sed -i '' 's|alextselegidis/bulma|votre-compte/bulma|g' {} +

# Corriger l'email de contact
find . -type f \( -name "*.php" -o -name "*.js" -o -name "*.json" -o -name "*.yml" -o -name "*.md" -o -name "*.scss" -o -name "*.html" \) \
  -not -path "./vendor/*" \
  -not -path "./node_modules/*" \
  -not -path "./system/*" \
  -not -path "./.git/*" \
  -exec sed -i '' 's|contact@bulma.com|contact@votre-domaine.com|g' {} +

echo "Correction des URLs terminée!"
echo ""
echo "IMPORTANT: Modifiez ce script pour utiliser votre véritable:"
echo "- Domaine web"
echo "- Compte GitHub"
echo "- Adresse email de contact"
