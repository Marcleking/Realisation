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
	  		$this->view->assign('menu', $this->view->fetch("menu"));

			if($_SESSION['user']->getType() == "Gestionnaire") {
				
				if(isset($_GET['suppId']))
				{
					$this->load->model('supprimerUtilisateur_Model','supprimer');

					if($this->supprimer->supprimerUser($_GET['suppId'])) {
						$this->view->assign("success", "");
					} else {
						$this->view->assign("fail", "");
					}
				}
				
				$this->load->model('affichageUtilisateurs_model','affiche');
				$listEmploye = $this->affiche->AfficherUtilisateurs();
				
				$listHtml = '<dl class="accordion" data-accordion> ';
				foreach($listEmploye as $x_value) {
						$listHtml = $listHtml . '<dd><a href="#panel'.  strtr($x_value["courriel"], array("." => "", "@" => "")) .'">' . $x_value["prenom"] ." ". $x_value["nom"] . ' - ' . $x_value["courriel"] . '</a>';
						$listHtml = $listHtml . '<div id="panel'. strtr($x_value["courriel"], array("." => "", "@" => "")) .'" class="content">';
						$listHtml = $listHtml . '<div class="left"> Nom: '. $x_value["prenom"] ." ". $x_value["nom"]. '</div>';
						$listHtml = $listHtml . '<div class="right"> Adresse: '. $x_value["numeroCivique"] .", ". $x_value["rue"]. '<br />'.$x_value["ville"]. ' '. $x_value["codePostal"] .'</div>';
						$listHtml = $listHtml . '<br />Courriel: '.$x_value["courriel"];
						$listHtml = $listHtml . '<br /><div class="right"><a href="'.url.'/modificationsAdmin?courriel='. $x_value["courriel"] .'"  class="button tiny">Modifier</a> <a href="'.url.'/gestionComptes?suppId='. $x_value["courriel"] .'" class="button alert tiny">Supprimer</a></div><br /></div></dd>';
				}
				

				$this->view->assign('lstEmploye', $listHtml);
				$this->view->assign('contenu', $this->view->fetch("view-gestionComptes"));
				
			}
			else {
				$this->view->display('view-interdit');
				return;
			}
		} else {

			$this->view->display('view-connexion');
	  		return;
		}

		$this->view->display('gabarit');
	  }
	  
}

?>
