<?php
	class modifierUtilisateur_Model extends TinyMVC_Model
	{
		function modifierUnutilisateur($nom, $prenom, $motPasse, $courriel, $numerocivique, $rue, $ville, $codePostal, $notifHoraire, $notifRemplacement) {
			$row = $this->db->query_one('Call ModifierUtilisateur( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', array( $nom, $prenom, $motPasse, $courriel, $numerocivique, $rue, $ville, $codePostal, $notifHoraire, $notifRemplacement));

    		if($row != null) {
    			$arrayUtil = array (
					"nom"  => $row["nom"],
					"prenom" => $row["prenom"]);
				return $arrayUtil;
    		}
			
			
			
		}
	}
?>