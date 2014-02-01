<?php
	class afficherMessage_model extends TinyMVC_Model
	{
		function afficherLesMessage($debut){
			$results = null;
			$row = $this->db->query('Call afficheMessage(?)',
			array($debut));
			
			
			
			while($row = $this->db->next()) {
				$results[] = $row;					
			}
			return $results;
			
			
			
		
		}
	}
?>