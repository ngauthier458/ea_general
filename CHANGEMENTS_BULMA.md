# Changement de marque : Easy!Appointments → Bulma

## Résumé des modifications effectuées

Toutes les références à "Easy!Appointments", "EasyAppointments" et "easyappointments" ont été remplacées par "Bulma" dans l'ensemble du dépôt.

### Statistiques
- **Fichiers JavaScript modifiés** : ~154 occurrences
- **Fichiers PHP modifiés** : ~760 occurrences  
- **Fichiers de traduction** : 573 fichiers

## Modifications effectuées

### 1. Noms et packages
- `Easy!Appointments` → `Bulma`
- `EasyAppointments` → `Bulma`
- `easyappointments` → `bulma`

### 2. URLs et liens
- `https://easyappointments.org` → `https://bulma.org`
- `http://easyappointments.org` → `https://bulma.org`
- `https://developers.easyappointments.org` → `https://bulma.org`
- `https://github.com/alextselegidis/easyappointments` → `https://github.com/votre-compte/bulma`

### 3. Emails
- `info@easyappointments.org` → `contact@bulma.com`

## ⚠️ IMPORTANT : Prochaines étapes requises

### 1. Personnaliser les URLs

**Note importante** : "bulma.org" est déjà utilisé par un framework CSS populaire. Vous devez remplacer ces URLs par votre propre domaine.

Éditez le fichier `fix_urls.sh` et remplacez :
- `https://votre-domaine.com` par votre vrai domaine
- `votre-compte/bulma` par votre compte GitHub réel
- `contact@votre-domaine.com` par votre email de contact

Puis exécutez :
```bash
chmod +x fix_urls.sh
./fix_urls.sh
```

### 2. Fichiers à vérifier manuellement

#### composer.json
- Changez `"name": "alextselegidis/bulma"` vers votre namespace
- Mettez à jour les URLs dans `"support"`
- Vérifiez l'email de l'auteur

#### package.json  
- Changez `"name": "bulma"` vers un nom unique (évitez "bulma" car déjà pris sur npm)
- Mettez à jour `"homepage"`
- Mettez à jour `"repository"`
- Mettez à jour `"bugs"`
- Vérifiez les informations de l'auteur

#### README.md
- Remplacez les liens GitHub
- Mettez à jour le logo (actuellement : `logo.png`)
- Mettez à jour les badges
- Personnalisez la description de votre entreprise

#### docker-compose.yml
- La base de données s'appelle maintenant `bulma` (ligne 26)
- Ajustez si nécessaire

### 3. Fichiers de langue

Tous les fichiers dans `application/language/*/translations_lang.php` ont été modifiés.
Vérifiez particulièrement :
- `about_app` : "À propos de Bulma"  
- `about_app_info` : Description de l'application
- `about_app_support` : Information de support
- `about_app_license` : Information de licence

### 4. Fichiers de code

Les fichiers suivants contiennent maintenant "Bulma" dans leurs en-têtes de copyright :
- Tous les contrôleurs PHP dans `application/controllers/`
- Tous les modèles dans `application/models/`
- Tous les helpers dans `application/helpers/`
- Tous les fichiers JavaScript dans `assets/js/`
- Tous les fichiers SCSS dans `assets/css/`

### 5. Logos et images

N'oubliez pas de remplacer :
- `assets/img/logo.png` - Logo principal
- `assets/img/logo-16x16.png` - Favicon
- `screenshot.png` - Capture d'écran dans le README
- Vérifiez s'il y a d'autres images à personnaliser

### 6. Base de données

Si vous avez déjà une base de données existante nommée `easyappointments`, vous devrez peut-être :
- La renommer en `bulma`
- Ou ajuster `docker-compose.yml` et `config.php`

## Scripts créés

### rename_to_bulma.sh
Script principal qui a effectué tous les remplacements de texte.

### fix_urls.sh  
Script à personnaliser et exécuter pour corriger les URLs avec votre propre domaine.

## Vérification

Pour vérifier qu'il ne reste pas de références à "Easy":

```bash
# Rechercher "Easy" (insensible à la casse)
grep -ri "easy.appointment" . --exclude-dir={vendor,node_modules,system,.git,storage}

# Vérifier les URLs easyappointments.org restantes
grep -r "easyappointments.org" . --exclude-dir={vendor,node_modules,system,.git,storage}
```

## Considérations légales

- Le projet original est sous licence GPL-3.0
- Assurez-vous de respecter les termes de la licence
- Conservez les attributions originales si requis par la licence

## Support

Si vous rencontrez des problèmes après ces changements :
1. Vérifiez les logs d'erreur
2. Testez l'installation complète
3. Vérifiez que tous les chemins et URLs sont corrects

---

**Date de modification** : $(date)
**Effectué par** : Script automatisé
