<?php
	class modifierUtilisateurAdmin_Model extends TinyMVC_Model
	{
		function modifierUnutilisateurAdmin($courriel, $nom, $prenom, $motPasse, $numerocivique, $rue, $ville, $codePostal,  $possesseurCle, $typeEmploye, $formationVetement, $formationChaussure, $formationCaissier, $respHoraireConflit) {

			$row = $this->db->query_one('Call ModifierUtilisateurAdmin( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', array($courriel, $nom, $prenom, $motPasse, $numerocivique, $rue, $ville, $codePostal,  $possesseurCle, $typeEmploye, $formationVetement, $formationChaussure, $formationCaissier, $respHoraireConflit));
		
    			return $row;
    		
			
			
			
		}
	}
?>