<?php
	class affichageutilisateur_model extends TinyMVC_Model
	{
		function afficherutilisateur($courriel) {
			$row = $this->db->query_one('Call Utilisateur(?)', array($courriel));

			
    			return $row;
    		
			
		}
	}
?>