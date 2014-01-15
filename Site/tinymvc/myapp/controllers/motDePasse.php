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

			if(isset($_GET['courriel']) && isset($_GET['str'])) {
				$this->load->model("motdepasse_model", "reinit");

				if($this->reinit->reinit($_GET['courriel'], $_GET['str'])) {
					$this->view->assign('erreur', 'Votre mot de passe à bien été réinisialisé.');
				} else {
					$this->view->assign('erreur', "Une erreur s'est produit lors de la réinisialisation.");
				}
			}

			$this->view->display('view-connexion');
		}
	  
}

?>
