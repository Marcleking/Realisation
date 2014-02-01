<?php

class Message_Controller extends TinyMVC_Controller
{
  function index()
  {
		$this->view->assign('entete', $this->view->fetch("entete"));

		$this->view->assign('accueil', '');
		$this->view->assign('message', 'class="active"');
		$this->view->assign('envoyerMessage', '');
		$this->view->assign('documents', '');
		$this->view->assign('horaire', '');
		$this->view->assign('dispo', '');
		$this->view->assign('gestionCompte', '');
		$this->view->assign('gestionComptes', '');
		$this->view->assign('ressource', '');
		
		if(isset($_SESSION['user']))
		{
			$this->view->assign('menu', $this->view->fetch("menu"));
			
			$this->load->model('message_model','message');
			
			$baliseHTML = '<dl class="accordion" data-accordion> ';
			$listeMessages = $this->message->MessagesUtilisateurs();	
				foreach($listeMessages as $valeur) {
					$baliseHTML = $baliseHTML . '<div class="medium-12 columns panel">';
					$baliseHTML = $baliseHTML .	'<font size = "1">' . $valeur["date"] . '</font>';
					$baliseHTML = $baliseHTML .	'<h5>'. '<b>' . '<center>' . $valeur["titre"] . '</center>' . '</b>' . '</h5>';
					$baliseHTML = $baliseHTML . '<hr>' . '</hr>';
					$chaine = strlen($valeur["message"]);
					if($chaine > 200)
					{
						$longueur = 200;
						$description = substr ($valeur["message"], 0, $longueur) . "...";
						$baliseHTML = $baliseHTML .	'<p>'. $description . '</p>';
						$baliseHTML = $baliseHTML . '<br /><div class="right"> . <a href="'.url.'/modificationsAdmin?courriel='. $valeur["message"] .'"  class="button tiny">Lire la suite</a></div>';
						$baliseHTML = $baliseHTML .	'</div>';
					}
					else
					{
						$baliseHTML = $baliseHTML .	'<p>'. $valeur["message"] . '</p>';
						$baliseHTML = $baliseHTML .	'</div>';
					}
				}



				$this->view->assign('listeMessages', $baliseHTML);
				$this->view->assign('contenu', $this->view->fetch("view-message"));
				$this->view->assign('ressource', '');

	 	if(isset($_SESSION['user']))
	  	{
	  		$this->view->assign('menu', $this->view->fetch("menu"));
		  	$this->view->assign('contenu', $this->view->fetch("view-message"));
		} else {
			$this->view->display('view-connexion');
			return;
		}
			$this->view->display('gabarit');
		}
		$this->view->display('gabarit');
  }
}
?>
