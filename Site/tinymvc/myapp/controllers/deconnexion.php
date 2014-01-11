<?php

class Deconnexion_Controller extends TinyMVC_Controller
{
	  function index()
	  {
	  	session_unset();
	  	$this->view->assign('entete', $this->view->fetch("entete"));
		$this->view->assign('erreur', '');
	  	$this->view->display('view-connexion');
	  }
}

?>
