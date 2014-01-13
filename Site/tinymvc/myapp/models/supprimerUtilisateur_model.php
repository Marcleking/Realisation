<?php
	class supprimerUtilisateur_Model extends TinyMVC_Model
	{
		function supprimerUser($noEmploye) {
			$row = $this->db->query_one('Call SupprimerUtilisateur(?)', array($noEmploye));

    		if($row != null) {
    			return true;
    		}

    		return false;
		}
	}
?>