<?php

class gestionComptes_Controller extends TinyMVC_Controller
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
				
				$this->load->model('affichageUtilisateurs_model','affiche');
				$listEmploye = $this->affiche->AfficherUtilisateurs();
				
				$listHtml = '<dl class="accordion" data-accordion> ';
				foreach($listEmploye as $x_value) {
						$listHtml = $listHtml . '<dd><a href="#panel'.  $x_value["noEmploye"] .'">'. $x_value["noEmploye"] .' - '. $x_value["prenom"] ." ". $x_value["nom"] .'</a>';
						$listHtml = $listHtml . '<div id="panel'.$x_value["noEmploye"] .'" class="content">Nom: '. $x_value["prenom"] ." ". $x_value["nom"];
						$listHtml = $listHtml . '<br />Courriel: '.$x_value["courriel"] .'</div></dd>';
				}
				

				
				
			
				$this->view->assign('lstEmploye', $listHtml);
				$this->view->assign('menu', $this->view->fetch("menu"));
				$this->view->assign('contenu', $this->view->fetch("view-gestionComptes"));
				
				
		
				
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
