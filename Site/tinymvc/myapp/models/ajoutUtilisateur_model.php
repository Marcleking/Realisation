<?php
	class ajoutUtilisateur_Model extends TinyMVC_Model
	{
		function Ajoututilisateur($courriel, $typeEmploye, $formationVetement, $formationChaussure, $formationCaissier, $possesseurCle, $respHoraireConflit) {
			
			$row = $this->db->query_one('Call AjouterUtilisateur(?, ?, ?, ?, ?, ?, ?)', 
				array($courriel, $typeEmploye, $formationVetement, $formationChaussure, $formationCaissier, $possesseurCle, $respHoraireConflit));

    		if($row != null) {
    			$arrayUtil = array (
					"nom"  => $row["nom"],
					"prenom" => $row["prenom"]);


    			//Envoie du courriel
    			mail($courriel, "Le coureur nordique", "Voici les informations de votre compte."); 

				return $arrayUtil;
    		}
		}
	}
?>