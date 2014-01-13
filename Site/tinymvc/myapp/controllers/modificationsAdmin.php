<?php

class modificationsAdmin_Controller extends TinyMVC_Controller
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
			
			
			$this->load->model('modifierUtilisateurAdmin_model','affiche');
			$result = $this->affiche->AfficherUtilisateur($_GET['courriel']);
			
			
			
			
			
			
			
			
			$this->load->model('affichageUtilisateur_model','affiche');
			$result = $this->affiche->AfficherUtilisateur($_GET['courriel']);	
			
			$this->view->assign('nom', $result["nom"]);
			$this->view->assign('prenom', $result["prenom"]);
			$this->view->assign('courriel', $result["courriel"]);
			$this->view->assign('numCivi', $result["numeroCivique"]);
			$this->view->assign('rue', $result["rue"]);
			$this->view->assign('ville', $result["ville"]);
			$this->view->assign('codePostal', $result["codePostal"]);
			$this->view->assign('notHor', $result["notifHoraire"]);
			$this->view->assign('notRem', $result["notifRemplacement"]);
			$this->view->assign('formationVetement', $result["formationVetement"]);
			$this->view->assign('formationChaussure', $result["formationChaussure"]);
			$this->view->assign('formationCaissier', $result["formationCaissier"]);
			$this->view->assign('respHoraireConflit', $result["respHoraireConflit"]);
			$this->view->assign('possesseurCle', $result["possesseurCle"]);
			$this->view->assign('typeEmploye', $result["typeEmploye"]);

			
			$this->view->assign('menu', $this->view->fetch("menu"));
			$this->view->assign('contenu', $this->view->fetch("view-modificationsAdmin"));
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
