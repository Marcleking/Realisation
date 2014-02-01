<?php

class Documents_Controller extends TinyMVC_Controller
{
	  function index()
	  {
	  	$this->view->assign('entete', $this->view->fetch("entete"));

		$this->view->assign('accueil', '');
		$this->view->assign('message', '');
		$this->view->assign('envoyerMessage', '');
        $this->view->assign('documents', 'class="active"');
        $this->view->assign('horaire', '');
        $this->view->assign('dispo', '');
        $this->view->assign('gestionCompte', '');
		$this->view->assign('gestionComptes', '');
		$this->view->assign('ressource', '');

	 	if(isset($_SESSION['user']))
	  	{
	  		$this->view->assign('menu', $this->view->fetch("menu"));
		  	$this->view->assign('contenu', $this->view->fetch("view-documents"));
		} else {
			$this->view->display('view-connexion');
	  		return;
		}

		$this->view->display('gabarit');
	  }

}

?>
