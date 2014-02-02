<?php


/**
 * lstUtilHoraire permet d'avoir accès aux informations utile à la génération d'une 
 * horaire
 * 
 * @return Array des informations utile pour gênérer un horaire 
 */
function lstUtilHoraire() {
	date_default_timezone_set('UTC');

	//Numero de la semaine que nous sommes présentement
	$semaine = intval(date("W"));
	$annee = intval(date("Y"));

	//Connexion a la BD(à changer de place)
	$connBD = new PDO('mysql:host=localhost;dbname=coureur_nordique', 'user_coureur', 'qweqwe');

	//Information sur un Utilisateurs
	$sql = 'Call Utilisateurs()';
	$prep = $connBD->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
	$prep->execute();

	//Array des utilisateurs
	$listUtilisateur = $prep->fetchAll();


	//Information sur les disponibilités d'une semaine selon le critère
	$sql = 'Call listeDispoSemaine(:semaine, :annee)';
	$prep = $connBD->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
	$prep->execute(array(':semaine' =>  $semaine, ':annee' =>  $annee  ));
		
	//Array des dispoSemaines selectionnés
	$listeDispoSemaine = $prep->fetchAll();


	//Array des Utilisateurs joint avec les dispoSemaines selectionnés
	$listeModifie = array();	



	for($i = 0;$i < count($listUtilisateur); $i++) {

		//DispoSemaine pour le bon utilisateur
		$DispoSem = null;
		
		for($j = 0;$j < count($listeDispoSemaine); $j++) {
			if($listeDispoSemaine[$j]['courriel'] == $listUtilisateur[$i]['courriel']) {
				$DispoSem = $listeDispoSemaine[$j];
			}
		}
		
		if($DispoSem != null) {
		
		//Information sur les disponibilités des jours selon ID de la semaine
		$sql = 'Call listeDispoJours(:id)';
		$prep = $connBD->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
		$prep->execute(array(':id' =>  $DispoSem['idDispoSemaine']));
		
		//Array des dispo des jours
		$listeDispoJours = $prep->fetchAll(PDO::FETCH_ASSOC);
		

		
		array_push($listeModifie, array("courriel" =>$listUtilisateur[$i]['courriel'], "indPriorite" => $listUtilisateur[$i]['indPriorite'], "hrsMin" => $listUtilisateur[$i]['hrsMin']
										, "hrsMax" => $listUtilisateur[$i]['hrsMax'], "possesseurCle" => $listUtilisateur[$i]['possesseurCle'], "formationChaussure" => $listUtilisateur[$i]['formationChaussure']
										, "formationCaissier" => $listUtilisateur[$i]['formationCaissier'], "formationVetement" => $listUtilisateur[$i]['formationVetement']
										, "nbHeureSouhaite" => $DispoSem['nbHeureSouhaite'], "idDispoSemaine" => $DispoSem['idDispoSemaine'], "refIdSemaineACopier" => $DispoSem['refIdSemaineACopier'], "listeDispoSemaine" => $listeDispoJours));
		} else {
		array_push($listeModifie, array("courriel" =>$listUtilisateur[$i]['courriel'], "indPriorite" => $listUtilisateur[$i]['indPriorite'], "hrsMin" => $listUtilisateur[$i]['hrsMin']
										, "hrsMax" => $listUtilisateur[$i]['hrsMax'], "possesseurCle" => $listUtilisateur[$i]['possesseurCle'], "formationChaussure" => $listUtilisateur[$i]['formationChaussure']
										, "formationCaissier" => $listUtilisateur[$i]['formationCaissier'], "formationVetement" => $listUtilisateur[$i]['formationVetement']));
		}
	}

	return $listeModifie;
}


/**
 * lstRessource permet d'avoir accès aux ressources utile selon la bonne semaine
 * 
 * @return Array des informations utile pour gênérer un horaire 
 */
function lstRessource() {
	date_default_timezone_set('UTC');

	//Numero de la semaine que nous sommes présentement et annee
	$semaine = intval(date("W"));
	$annee = intval(date("Y"));
	
	//Connexion a la BD(à changer de place)
	$connBD = new PDO('mysql:host=localhost;dbname=coureur_nordique', 'user_coureur', 'qweqwe');

	//Information sur un Utilisateurs
	$sql = 'Call Utilisateurs()';
	$prep = $connBD->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
	$prep->execute();

	//Array des utilisateurs
	$listUtilisateur = $prep->fetchAll();


	//Information sur les disponibilités d'une semaine selon le critère
	$sql = 'Call listeRessource(:noSemaine, :annee)';
	$prep = $connBD->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
	$prep->execute(array(':noSemaine' =>  $semaine, ':annee' =>  $annee ));
		
	//Array des dispoSemaines selectionnés
	$listeDispoSemaine = $prep->fetchAll(PDO::FETCH_ASSOC);

	return $listeDispoSemaine;
	
}

/**
 * arraySemaine permet de generer le array des ratios de chaque case
 * 
 * @return Array avec un ratio de 1 à toute les cases 
 */
function arrayRatioSemaine() {
	$arraySemaine = array();

	for($i = 0; $i < 7; $i++) {
	
		$arrayJour = array();
		
		for($j = 0; $j < 24 ; $j++) {
		$arrayJour[$j] = 1;
		}
		$arraySemaine[$i] = $arrayJour;
		
		
	}


	return $arraySemaine;
}



?>