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
			if(isset($_POST['nom']) && isset($_POST['prenom']) && isset($_POST['motdePasse']) && isset($_POST['motdePasse1']) && !empty($_POST['nom']) && !empty($_POST['prenom']) && !empty($_POST['motdePasse'])&& !empty($_POST['motdePasse1'])) {
				
				$notifHoraire = 1;
				$notifRemplacement = 1;
				
				
				if(!isset($_POST['notifHoraire'])) {
					$notifHoraire = 0;
				}
					
				if(!isset($_POST['notifRemplacement'])) {
					$notifRemplacement = 0;
				}
				
				$this->load->model('modifierUtilisateur_model','modif');
				$result = $this->modif->modifierUnutilisateur($_POST['nom'], $_POST['prenom'], $_POST['motPasse'] , $_SESSION['user']->getNom(), $_POST['numeroCiv'],  $_POST['rue'],  $_POST['ville'], $_POST['codepost'], $notifHoraire, $notifRemplacement);					
			}	
			$this->view->assign('menu', $this->view->fetch("menu"));
			$this->view->assign('contenu', $this->view->fetch("view-gestionCompte"));
			
			$this->load->model('affichageUtilisateur_model','affiche');
			$result = $this->affiche->AfficherUtilisateurs($_SESSION['user']->getNom());	
			
			//$this->view->assign('nom', $result["nom"]);
			//$this->view->assign('prenom', $result["prenom"]);
			//$this->view->assign('numCivi', $result["numeroCivique"]);
			//$this->view->assign('rue', $result["rue"]);
			//$this->view->assign('ville', $result["ville"]);
			//$this->view->assign('CP', $result["codePostal"]);
			//$this->view->assign('notHor', $result["notifHoraire"]);
			//$this->view->assign('notRem', $result["notifRemplacement"]);
			
			//echo$_SESSION['user']->getNom();
		
		} else {
			$this->view->display('view-connexion');
	  		return;
		}

		$this->view->display('gabarit');
	  }
	  
}

?>
