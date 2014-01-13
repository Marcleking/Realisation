<?php
	class affichageUtilisateur_model extends TinyMVC_Model
	{
		function AfficherUtilisateurs($courriel) {
			$row = $this->db->query('Call Utilisateur(?)', array($courriel));
			
			while($row = $this->db->next())
				$results[] = $row;
			

			return $results;
			
		}
	}
?>