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
			
			if(isset($_POST['nom']) || isset($_POST['prenom']) || isset($_POST['courriel']) || isset($_POST['numeroCivique']) || isset($_POST['rue']) || 
					isset($_POST['ville']) || isset($_POST['codepost']) || isset($_POST['notifHoraire']) || isset($_POST['notifRemplacement']) || isset($_POST['typEmp']) || isset($_POST['Vetement']) || isset($_POST['Chaussure'])
					|| isset($_POST['Caissier']) || isset($_POST['cle']) || isset($_POST['conflit'])) {
					
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
					
						$this->load->model('modifierutilisateuradmin_model','modifie');
						$result = $this->modifie->modifierUnutilisateurAdmin(trim($_GET['courriel']), trim($_POST['nom']), trim($_POST['prenom']), trim($_POST['numeroCiv']), trim($_POST['rue']), trim($_POST['ville']), trim($_POST['codepost']),  $cle, $_POST['typeEmp'], $_POST['priorite'], $_POST['hrsMin'], $_POST['hrsMax'], $formationVetement, $formationChaussure, $formationCaissier, $respHoraireConflit);
						
						$this->view->assign("success", "");
					}
		
			
			
			
			if(isset($_GET['courriel']))
			{
				$this->load->model('affichageUtilisateur_model','affiche');
				$result = $this->affiche->AfficherUtilisateur($_GET['courriel']);	
				
				if(!empty($result)) {				
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
				$this->view->assign('indPriorite', $result["indPriorite"]);
				$this->view->assign('hrsMin', $result["hrsMin"]);
				$this->view->assign('hrsMax', $result["hrsMax"]);
				
				$this->view->assign('contenu', $this->view->fetch("view-modificationsAdmin"));
				} else {
					$this->view->assign('erreur', 'Vous devez avoir un courriel valide et disponible dans un des comptes des employés!');
					$this->view->assign('contenu', $this->view->fetch("view-interditavecmessage"));
				}
			} else {
				
				$this->view->assign('erreur', 'Vous devez avoir un courriel valide et disponible dans un des comptes des employés!');
				$this->view->assign('contenu', $this->view->fetch("view-interditavecmessage"));
			}

			$this->view->assign('menu', $this->view->fetch("menu"));
			
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
