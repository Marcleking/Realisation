<?php

class motDePasseOublie_Controller extends TinyMVC_Controller
{
	  function index()
	  {
	  	$this->view->assign('entete', $this->view->fetch("entete"));

		$this->load->model("reinitmdp_model", "reinit");
		$this->reinit->reinit("marcantoine.bouchardm@gmail.com");


		$this->view->assign('erreur', 'Test');

	 	
	  	$this->view->display('view-connexion');
	  	

	  }
	  
}

?>
