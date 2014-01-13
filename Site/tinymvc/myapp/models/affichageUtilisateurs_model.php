<?php
	class affichageUtilisateurs_model extends TinyMVC_Model
	{
		function AfficherUtilisateurs() {
			$row = $this->db->query('Call Utilisateurs()');
			while($row = $this->db->next()) {
				if ($row["courriel"] != $_SESSION['user']->getNom()) {
					echo $row["courriel"];
					echo "<br />";
					echo $_SESSION['user']->getNom();
					$results[] = $row;
				}
			}
			return $results;
			
		}
	}
?>