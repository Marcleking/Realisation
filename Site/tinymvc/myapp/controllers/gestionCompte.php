<?php

class gestionCompte_Controller extends TinyMVC_Controller
{
	  function index()
	  {
	  	$this->view->assign('entete', $this->view->fetch("entete"));

		$this->view->assign('accueil', '');
		$this->view->assign('message', '');
        $this->view->assign('documents', '');
        $this->view->assign('horaire', '');
        $this->view->assign('dispo', '');
        $this->view->assign('gestionCompte', 'class="active"');
		$this->view->assign('gestionComptes', '');
	 	
	 	if(isset($_SESSION['user']))
	  	{
		
				$this->view->assign('menu', $this->view->fetch("menu"));
				$this->view->assign('contenu', $this->view->fetch("view-gestionCompte"));		
		
		} else {
			$this->view->display('view-connexion');
	  		return;
		}

		$this->view->display('gabarit');
	  }
	  
}

?>
