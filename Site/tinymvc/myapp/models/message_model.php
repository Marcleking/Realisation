<?php
	class message_model extends TinyMVC_Model
	{
		function MessagesUtilisateurs() {
			$row = $this->db->query('Call Messages()');
			while($row = $this->db->next()) {
				$results[] = $row;
			}
			return $results;
		}
	}
?>