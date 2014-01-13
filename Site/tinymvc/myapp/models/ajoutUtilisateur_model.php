<?php
	class ajoutUtilisateur_Model extends TinyMVC_Model
	{
		function Ajoututilisateur($nom, $prenom, $motPasse, $possesseurCle, $typeEmploye, $formationVetement, $formationChaussure, $formationCaissier, $respHoraireConflit) {
			$row = $this->db->query_one('Call AjouterUtilisateur(?, ?, ?, ?, ?, ?, ?, ?, ?)', array($nom, $prenom, $motPasse, $possesseurCle, $typeEmploye, $formationVetement, $formationChaussure, $formationCaissier, $respHoraireConflit));

    		if($row != null) {
    			$arrayUtil = array (
					"nom"  => $row["nom"],
					"prenom" => $row["prenom"]);
				return $arrayUtil;
    		}
			
			
			
		}
	}
?>