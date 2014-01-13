<?php

class Connexion_Controller extends TinyMVC_Controller
{

	  function index()
	  {
	  	$this->view->assign('entete', $this->view->fetch("entete"));
		$this->view->assign('accueil', '');
		$this->view->assign('message', '');
   		$this->view->assign('documents', '');
    	$this->view->assign('horaire', '');
    	$this->view->assign('dispo', '');
    	$this->view->assign('gestionCompte', '');
		$this->view->assign('gestionComptes', '');

	  	if(isset($_POST['user']) && isset($_POST['pwd']))
	  	{

	  		$this->load->model('connexion_model','connexion');
			$this->connexion->seConnecter($_POST['user'], $_POST['pwd']);

			

	  		if (isset($_SESSION['user']))
	  		{
	  			$this->view->assign('menu', $this->view->fetch("menu"));
			  	$this->view->assign('contenu', $this->view->fetch("accueil"));
			  	$this->view->display('gabarit');
			  	return;
	  		}
	  	}
	  	$this->view->display('view-connexion');
	  }
}
?>
