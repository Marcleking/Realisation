<?php 
	
	class Disponibilites_Model extends TinyMVC_Model{
		
		function enregistrerDiponibilites()
	}

	function AfficherDisponibilites()
	{
		
		
		$row = $this->db->query('Call dispoChoisie(noEmp, noSemaine, annee)');
		while($row = $this->db->next())
			$results[] = $row;
		echo json_encode($results);
	}
?>