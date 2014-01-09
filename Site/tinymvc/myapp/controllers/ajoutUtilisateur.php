<?php

class ajoutUtilisateur_Controller extends TinyMVC_Controller
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
		$this->view->assign('gestionComptes', 'class="active"');

	 	
	 	if(isset($_SESSION['user']))
	  	{
			
			if($_SESSION['user']->getType() == "Gestionnaire") {
				$this->view->assign('menu', $this->view->fetch("menu"));
				$this->view->assign('contenu', $this->view->fetch("view-ajoutUtilisateur"));
			}
			else {
				//Change view for error message
				$this->view->display('view-connexion');
			}
		} else {
			$this->view->display('view-connexion');
	  		return;
		}

		$this->view->display('gabarit');
	  }
	  
}

?>
