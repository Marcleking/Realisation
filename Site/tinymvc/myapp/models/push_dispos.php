<?php 
	
	// Retourne du contenu en format JSON.
	header("Content-type: text/html; charset=utf-8");

	// Force l'expiration immédiate de la page au niveau du navigateur Web; elle n'est pas conservée en cache.
	header("Expires: Thu, 19 Nov 1981 08:52:00 GMT");
	header("Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0");
	header("Pragma: no-cache");
	
	$dbHote = "localhost";
	$dbNom = "coureur_nordique";
	$dbUser = "user_coureur";
	$dbPwd = "qweqwe";
	
	try{
		
		//Options pour la gestion et messages d'erreur.
		$pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
	
		//Connexion à la BD.
		$bdd = new PDO("mysql:host=$dbHote;dbname=$dbNom", $dbUser, $dbPwd, array(PDO::MYSQL_ATTR_INIT_COMMAND=>"SET NAMES utf8"));
	}
	catch(PDOException $e){
		
	}
	
	try{
		$valeurs = json_decode($_POST['jsonForm']);
		
		// Ajout de l'entrée pour disponibilitesemaine
		$idDispoSemaine = -1;
		$noDispoSemaine = $valeurs->horaire->noSemaine;
		$annee = $valeurs->horaire->annee;
		$nbHeureSouhaite = $valeur->nbDesire;
		$courriel = $_SESSION['user']->getNom();
		
		$req = $bdd->prepare("Call ajoutModifDisposSemaine(?,?,?,?,?)");
		$req->bindParam(1,$idDispoSemaine);
		$req->bindParam(2,$noDispoSemaine);
		$req->bindParam(3,$annee);
		$req->bindParam(4,$nbHeureSouhaite);
		$req->bindParam(5,$courriel);
		
		$req->execute();
		
		// Récupère le no de la semaine
		$valeurAjoute = $req->fetch();
		$idDispoSemaine = $valeurAjoute['idDispoSemaine'];
		
		// Ajout des entrées pour chaque disponibilitejour
		
		$disponibilites = $valeur->horaire->disponibilites;
		foreach($disponibilites as $disponibilite){
			
			$idDispoJours = -1;
			$jour = $disponibilite->jour;
			$heureDebut = $disponibilite->lowerTime[0]->hour . ":" . $disponibilite->lowerTime[0]->minutes;
			$heureFin = $disponibilite->upperTime[0]->hour . ":" . $disponibilite->upeerTime[0]->minutes;
			
			$req = $bdd->prepare("Call ajoutDispoBloc(?,?,?,?)");
			$req->bindParam(1,$jour);
			$req->bindParam(2,$heureDebut);
			$req->bindParam(3,$heureFin);
			$req->bindParam(4,$idDispoSemaine);
			$req->execute();
		}
		
		$req = $bdd->prepare("Call ajoutDisposSemainesCopie(?,?,?)");
		
		// Ajout des semaines copiées
		for ($i = 1; $i <= $valeurs->repetition && $i <= 52; $i++){
			$req->bindParam(1,$idDispoSemaine);
			
			if(($noDispoSemaine + $i) <= 52){
				$req->bindParam(2,$noDispoSemaine + $i);
				$req->bindParam(3,$annee);
			}
			else
			{
				$req->bindParam(2,$i);
				$req->bindParam(3,$annee + 1);
			}
			$req->execute();
		}
		
	}
	catch(PDOException $e){
	
	}
?>