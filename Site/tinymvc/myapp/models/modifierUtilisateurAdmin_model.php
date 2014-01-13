<?php
	class modifierutilisateuradmin_model extends TinyMVC_Model
	{
		function modifierUnutilisateur($courriel, $nom, $prenom, $motPasse, $numerocivique, $rue, $ville, $codePostal,  $possesseurCle, $typeEmploye, $formationVetement, $formationChaussure, $formationCaissier, $respHoraireConflit, $notifHoraire,  $notifRemplacement) {

			$row = $this->db->query_one('Call ModifierUtilisateurAdmin( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', array($courriel, $nom, $prenom, $motPasse, $numerocivique, $rue, $ville, $codePostal,  $possesseurCle, $typeEmploye, $formationVetement, $formationChaussure, $formationCaissier, $respHoraireConflit, $notifHoraire,  $notifRemplacement));
		
    			$arrayUtil = array (
					"nom"  => $row["nom"],
					"prenom" => $row["prenom"]);
				return $arrayUtil;
    		
			
			
			
		}
	}
?>