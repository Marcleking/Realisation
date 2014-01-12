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
		$this->view->assign('erreurNom', '');
		$this->view->assign('erreurPrenom', '');
		$this->view->assign('erreurMotDePasse', '');
	 	
		if(isset($_POST['nom']) && empty($_POST['nom'])) {
			$this->view->assign('erreurNom', 'error');
		}
		if(isset($_POST['prenom'])&& empty($_POST['prenom'])) {
			$this->view->assign('erreurPrenom', 'error');
		}
		if(isset($_POST['motdePasse']) && empty($_POST['motdePasse'])) {
			$this->view->assign('erreurMotDePasse', 'error');
		}
		
	 	if(isset($_SESSION['user']))
	  	{
			if($_SESSION['user']->getType() == "Gestionnaire") {
				if(isset($_POST['nom']) && isset($_POST['prenom']) && isset($_POST['motdePasse']) && !empty($_POST['nom']) && !empty($_POST['prenom']) && !empty($_POST['motdePasse'])) {
				
					$cle = 1;
					$formationVetement = 1;
					$formationChaussure = 1;
					$formationCaissier = 1;
					$respHoraireConflit = 1;
					
					if(!isset($_POST['cle'])) {
						$cle = 0;
					}
					
					if(!isset($_POST['Vetement'])) {
						$formationVetement = 0;
					}
					
					if(!isset($_POST['Chaussure'])) {
						$formationChaussure = 0;
					}
					
					if(!isset($_POST['Caissier'])) {
						$formationCaissier = 0;
					}
					
					if(!isset($_POST['conflit'])) {
						$respHoraireConflit = 0;
					}
					
					
					$this->load->model('ajoutUtilisateur_model','ajout');
					$test = $this->ajout->Ajoututilisateur($_POST['nom'], $_POST['prenom'], $_POST['motdePasse'], $cle, $_POST['typeEmp'], $formationVetement, $formationChaussure, $formationCaissier, $respHoraireConflit);
					//echo $test["nom"];
					
						
				}
				
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
