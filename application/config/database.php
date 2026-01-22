<?php defined('BASEPATH') or exit('No direct script access allowed');

// On récupère "client1" depuis "client1.localhost" ou "client1.tonsite.com"
$host = $_SERVER['HTTP_HOST'];
$host_parts = explode('.', $host);
$tenant = $host_parts[0]; // Récupère la première partie avant le point

// Sécurité
$tenant = preg_replace("/[^a-zA-Z0-9]/", "", $tenant);


$active_group = 'default';
$query_builder = TRUE;

$db['default']['hostname'] = Config::DB_HOST;
$db['default']['username'] = Config::DB_USERNAME;
$db['default']['password'] = Config::DB_PASSWORD;

// 3. LA MODIFICATION CRUCIALE : On utilise la variable $tenant ici
// On suppose que tes bases s'appellent ea_client1, ea_client2, etc.
$db['default']['database'] = 'ea_' . $tenant; 

$db['default']['dbdriver'] = 'mysqli';
$db['default']['dbprefix'] = ''; // Laisse vide si tes tables n'ont pas de préfixe interne
$db['default']['pconnect'] = FALSE;
$db['default']['db_debug'] = TRUE;
$db['default']['cache_on'] = FALSE;
$db['default']['cachedir'] = '';
$db['default']['char_set'] = 'utf8mb4';
$db['default']['dbcollat'] = 'utf8mb4_unicode_ci';
$db['default']['swap_pre'] = '';
$db['default']['autoinit'] = TRUE;
$db['default']['stricton'] = FALSE;