<?php
	class modifierUtilisateur_Model extends TinyMVC_Model
	{
		function modifierUnutilisateur($nom, $prenom, $motPasse, $courriel, $numerocivique, $rue, $ville, $codePostal, $notifHoraire, $notifRemplacement) {

			$row = $this->db->query_one('Call ModifierUtilisateur( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', array($courriel, $nom, $prenom, $motPasse, $numerocivique, $rue, $ville, $codePostal, $notifHoraire, $notifRemplacement));
		
    			$arrayUtil = array (
					"nom"  => $row["nom"],
					"prenom" => $row["prenom"]);
				return $arrayUtil;
    		
			
			
			
		}
	}
?>