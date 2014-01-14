<?php
	class reinitmdp_model extends TinyMVC_Model
	{
		function reinit($courriel) {
			$this->db->query_one('Call reinitMdp(?, ?)', array($courriel, "salut"));
				
    		$sujet = "Votre compte – Le Coureur Nordique";
			$message =  "<h3>Réinisialisation</h3>" .
						"<p>Votre mot de passe à été réinisialisé</p>" .
	    				"<p>Voici les nouvelles informations de votre compte : </p>" .
	    				"<p><strong>Nom d'utilisateur</strong> : " . $courriel . "</p>" .
	    				"<p><strong>Mot de passe : </strong>" . "salut" . "</p>";

			$headers = "From: \"Le Coureur Nordique\"<noreply@bouchardm.com>\n";
			$headers .= "Reply-To: noreply@bouchardm.com\n";
			$headers .= "Content-Type: text/html; charset=\"iso-8859-1\"";
			
			if (mail($courriel,$sujet,$message,$headers)){
				return true;
			}

			return false;
			
		}
	}
?>