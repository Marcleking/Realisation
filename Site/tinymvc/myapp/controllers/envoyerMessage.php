<?php

class EnvoyerMessage_Controller extends TinyMVC_Controller
{
	  function index()
	  {
	  	$this->view->assign('entete', $this->view->fetch("entete"));

		$this->view->assign('accueil', '');
		$this->view->assign('message', '');
		$this->view->assign('envoyerMessage', 'class="active"');
        $this->view->assign('documents', '');
        $this->view->assign('horaire', '');
        $this->view->assign('dispo', '');
        $this->view->assign('gestionCompte', '');
		$this->view->assign('gestionComptes', '');
		$this->view->assign('ressource', '');

	 	if(isset($_SESSION['user']))
	  	{
	  		$this->view->assign('menu', $this->view->fetch("menu"));

			if($_SESSION['user']->getType() == "Gestionnaire") {

				if (isset($_POST['titre']) && trim($_POST['titre']) && isset($_POST['message']) && trim($_POST['message'])){

					if(empty($_POST['titre'])){

						$this->view->assign("fail", "");

					} else if(empty($_POST['message'])){

						$this->view->assign("fail", "");

					} else{

						$this->load->model('envoyerMessage_model','envoiMes');
						$result = $this->envoiMes->AjoutMessage(trim($_POST['titre']), trim($_POST['message']), $_SESSION['user']->getNom());
						$this->view->assign("success", "");
					}
				}
				else
				{
					if(isset($_POST['titre']) && isset($_POST['message']))
					{
						$this->view->assign("fail", "");
					}
				}
				$this->view->assign('contenu', $this->view->fetch("view-envoyerMessage"));
			}
		} else {
			$this->view->display('view-connexion');
	  		return;
		}

		$this->view->display('gabarit');
	  }
}

?>