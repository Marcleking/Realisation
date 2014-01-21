<?php

class motDePasse_Controller extends TinyMVC_Controller
{
		function index()
		{
			$this->view->assign('entete', $this->view->fetch("entete"));
			if(isset($_POST['user'])) {
				$this->load->model("motdepasse_model", "reinit");
				if($this->reinit->demandeReinit($_POST['user'])) {
					$this->view->assign('success', '');
				} else {
					$this->view->assign('fail', '');
				}
			}

			$this->view->display('view-motdepasse');
		}

		function reinitMdp() {
			$this->view->assign('entete', $this->view->fetch("entete"));
			$this->load->model("motdepasse_model", "reinit");

			if(isset($_POST['pwd']) && 
				isset($_POST['pwd2']) && 
				isset($_POST['courriel']) && 
				isset($_POST['str'])) {

				if ($_POST['pwd'] == $_POST['pwd2']) {
					if($this->reinit->reinitialisation($_POST['courriel'], $_POST['str'], $_POST['pwd'])) {
						$this->view->assign('erreur', 'Votre mot de passe a été réinisialisé avec succès.');
						$this->view->display('view-connexion');
					} else {
						$this->view->assign('erreur', 'Une erreur est survenue. Veuillez réessayer plus tard.');
						$this->view->display('view-connexion');
					}
				} else {
					$this->view->assign('erreur', 'Votre mot de passe n\'est pas identique à la confirmation.');
					$this->view->assign('courriel', $_POST['courriel']);
					$this->view->assign('str', $_POST['str']);
					$this->view->display('view-reinitmdp');
				}
			} else if(isset($_GET['courriel']) && isset($_GET['str'])) {
				if($this->reinit->bonneDemande($_GET['courriel'], $_GET['str'])) {
					$this->view->assign('courriel', $_GET['courriel']);
					$this->view->assign('str', $_GET['str']);
					$this->view->display('view-reinitmdp');
				} else {
					$this->view->assign('erreur', 'Votre lien de réinisialisation n\'est plus valide.');
					$this->view->display('view-connexion');
				}
				
			}

			
		}
	  
}

?>
