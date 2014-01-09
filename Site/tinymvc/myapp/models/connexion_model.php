<?php
	class Connexion_Model extends TinyMVC_Model
	{
		function seConnecter($noEmploye, $pwd) {
			/*
			$this->db->select('*');
		    $this->db->from('employe');
		    $this->db->where('noEmploye', $noEmploye); // where noEmploye=$noEmploye

		    $this->db->query();
		    
		    $row = $this->db->next();
			
		    if ($pwd == $row['motDePasse'])
		    {
		    	$_SESSION['user'] = new User();
		  		$_SESSION['user']->setNom($noEmploye);
		  		$_SESSION['user']->setType($row['typeEmploye']);
		    }
		    */

		    $nom = "";
		    $type = "";

    		$row = $this->db->query_one('Call Connexion(?, ?)', array($noEmploye, $pwd));

    		if($row != null) {

    			$_SESSION['user'] = new User();
		  		$_SESSION['user']->setNom($row["nom"]);
		  		$_SESSION['user']->setType($row["typeEmploye"]);
    		}
		}
	}
?>