<?php

date_default_timezone_set('UTC');

$connBD = new PDO('mysql:host=localhost;dbname=coureur_nordique', 'user_coureur', 'qweqwe');

$sql = 'Call Utilisateurs()';
$prep = $connBD->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
$prep->execute();

$listUtilisateur = $prep->fetchAll();



$sql = 'Call listeDispoSemaine(:cour)';
$prep = $connBD->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
$prep->execute(array(':cour' =>  intval(date("W"))));
	
$listeDispoSemaine = $prep->fetchAll();
$listeModifie = array();	

for($i = 0;$i < count($listUtilisateur); $i++) {
	$DispoSem = null;
	for($j = 0;$j < count($listeDispoSemaine); $j++) {
		if($listeDispoSemaine[$j]['courriel'] == $listUtilisateur[$i]['courriel']) {
			$DispoSem = $listeDispoSemaine[$j];
			
		}
	}
	
	if($DispoSem != null) {
	
	$sql = 'Call listeDispoJours(:id)';
	$prep = $connBD->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
	$prep->execute(array(':id' =>  $DispoSem['idDispoSemaine']));
		
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

for($h = 0; $h < count($listeModifie); $h++) {
	print_r($listeModifie[$h]);
	echo "<br /><br />";
	}

?>