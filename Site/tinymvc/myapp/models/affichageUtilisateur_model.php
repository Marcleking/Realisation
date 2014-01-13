<?php
	class affichageUtilisateur_model extends TinyMVC_Model
	{
		function AfficherUtilisateur($courriel) {
			$row = $this->db->query_one('Call Utilisateur(?)', array($courriel));

			
    			return $row;
    		
			
		}
	}
?>