<?php
	class supprimerUtilisateur_Model extends TinyMVC_Model
	{
		function supprimerUser($courriel) {
			if ($courriel != $_SESSION['user']->getNom()) {
				$row = $this->db->query_one('Call SupprimerUtilisateur(?)', array($noEmploye));
				
				if($row != null) {
    				return true;
    			}
			}
			
    		return false;
		}
	}
?>