<?php
	class Connexion_Model extends TinyMVC_Model
	{
		function seConnecter($noEmploye, $pwd) {
			$row = $this->db->query_one('Call Connexion(?, ?)', array($noEmploye, $pwd));

    		if($row != null) {
    			$_SESSION['user'] = new User();
		  		$_SESSION['user']->setNom($row["nom"]);
		  		$_SESSION['user']->setType($row["typeEmploye"]);
    		}
		}
	}
?>