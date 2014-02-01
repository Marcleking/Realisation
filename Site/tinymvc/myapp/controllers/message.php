<?php

class Message_Controller extends TinyMVC_Controller
{
  function index()
  {
		$this->view->assign('entete', $this->view->fetch("entete"));
		$this->view->assign('accueil', '');
		$this->view->assign('message', 'class="active"');
		$this->view->assign('envoyerMessage', '');
		$this->view->assign('documents', '');
		$this->view->assign('horaire', '');
		$this->view->assign('dispo', '');
		$this->view->assign('gestionCompte', '');
		$this->view->assign('gestionComptes', '');
		$this->view->assign('ressource', '');
		

	 	if(isset($_SESSION['user']))
	  	{
		
			if(isset($_GET['debut'])) {
				$debut = trim($_GET['debut']);
			} else {
				$debut = 0;
			}
			
			$this->load->model('afficherMessage_model','lesMessage');
			$result = $this->lesMessage->afficherLesMessage($debut);
			$listMessage = '<dl class="accordion" data-accordion>';
			$dernierMess = 0;
			
			if($result[0] != null)
				for($i = 0; $i< count($result); $i++) {
				
					$listMessage = $listMessage. '<dd><a href="#panel'.$i.'"><b>' . $result[$i]['titre'] . '</b><span style="float:right">'. $result[$i]['courriel'] . '</span></a>';
					$listMessage = $listMessage .'<div id="panel'.$i.'" class="content"><span style="float:right">' . $result[$i]['date'] . '</span> <hr>';
					$listMessage = $listMessage . $result[$i]['message'] . '</div></dd>';
					
					
					$dernierMess = $result[$i]['idMessage'];
					
					
					
				}
			
			
			$listMessage =  $listMessage . '</dl>';
  

    
    
  
  
			$this->view->assign('listMessage', $listMessage);
			
			if(isset($_GET['debut'])) 
				$this->view->assign('btnPrecedent',  '<a href="?debut='. ($debut + 10)  .'" class="button radius left"> Suivant</a>');
			else
				$this->view->assign('btnPrecedent',  '');
				
				
			if(count($result) < 10)
				$this->view->assign('btnSuivant', '<a href="#" class="button radius right disabled"> Precedent</a>');
			else
				$this->view->assign('btnSuivant', '<a href="?debut='. $dernierMess .'" class="button radius right"> Precedent</a>');
			
			
	  		$this->view->assign('menu', $this->view->fetch("menu"));
		  	$this->view->assign('contenu', $this->view->fetch("view-message"));
			
			
			
			
		} else {
			$this->view->display('view-connexion');
			return;
		}
			$this->view->display('gabarit');

  }
}
?>
