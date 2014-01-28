<?php

	$link = mysql_connect('localhost', 'root', '');
	if (!$link) {
	   die('Impossible de se connecter : ' . mysql_error());
	}

	// Rendre la base de données foo, la base courante
	$db_selected = mysql_select_db('gyarunity', $link);
	if (!$db_selected) {
	   die ('Impossible de sélectionner la base de données : ' . mysql_error());
	}
	
	function get_table($arg1, $arg2){	
		$menu = array();
		$query = sprintf
		("SELECT ".$arg2." FROM ".$arg1."");

		// Exécution de la requête
		$result = mysql_query($query);

		// Vérification du résultat
		// Ceci montre la requête envoyée à MySQL ainsi que l'erreur. Utile pour déboguer.
		if (!$result) {
	    $message  = 'Requête invalide : ' . mysql_error() . "\n";
	    $message .= 'Requête complète : ' . $query;
	    die($message);
		}
		else{
			while($row = mysql_fetch_assoc($result)){
				array_push($menu, $row);
			}
			return $menu;
		}
	}

	$description = get_table('description', '*');
	$menu = get_table('menu', '*');
	$members = get_table('members', '*');
	$articles = get_table('articles', '*');
	$tags = get_table('tags', '*');
	$gallery_link = get_table('gallery_link', '*');
	$images = get_table('images', '*');
	$makeovers = get_table('makeovers', '*');

	include 'templates/homepage.php';

?>