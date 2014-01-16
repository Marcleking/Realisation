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
			if(isset($_POST['nom']) && isset($_POST['prenom']) && !empty($_POST['nom']) && !empty($_POST['prenom'])) {
				$notifHoraire = 1;
				$notifRemplacement = 1;
				
				
				if(!isset($_POST['notifHoraire'])) {
					$notifHoraire = 0;
				}
					
				if(!isset($_POST['notifRemplacement'])) {
					$notifRemplacement = 0;
				}
				
				$this->load->model('modifierUtilisateur_model','modif');
				$result = $this->modif->modifierUnutilisateur($_POST['nom'], $_POST['prenom'], $_POST['motdePasse'] , $_SESSION['user']->getNom(), $_POST['numeroCiv'],  $_POST['rue'],  $_POST['ville'], $_POST['codepost'], $notifHoraire, $notifRemplacement);	
				
				$this->view->assign("success", "");
				//$this->view->assign('erreur', "<div data-alert class='alert-box success round'>Modifications appliqué</div>");
				
				$valCritique = false;
				$i = 0;
				while(!$valCritique) {
					if(!isset($_POST['tel'.$i])) {
						$valCritique = true;
					} else {
						echo $_POST['tel'.$i];
					}
					$i++;
				}



			} else if(isset($_POST['numeroCiv']) || isset($_POST['rue']) || isset($_POST['ville']) || isset($_POST['codepost']) ){
				
				//$this->view->assign('erreur', "<div data-alert class='alert-box warning round'></div>");
				$this->view->assign("fail", "");
			}

			
			
			$this->load->model('affichageutilisateur_model','affiche');
			$result = $this->affiche->afficherutilisateur($_SESSION['user']->getNom());	
			$this->load->model('affichageutilisateur_model','tel');
			$result1 = $this->tel->affichertelehpone($_SESSION['user']->getNom());	
			
		
			
			if(count($result1) == 0) {
				//$this->view->assign('type', '');
				$this->view->assign('notelephone', '');
			}
			else {
				
				$this->view->assign('notelephone', $result1[0]['noTelephone']);
			}
			
			$this->view->assign('cell', '');
			$this->view->assign('domi', '');
			$this->view->assign('ecole', '');
			$this->view->assign('bureau', '');
			$this->view->assign('autre', '');
			
			if($result1[0]['description'] == "Cellulaire")
				$this->view->assign('cell', 'selected');
			
			if($result1[0]['description'] == "Maison")
				$this->view->assign('domi', 'selected');
				
			if($result1[0]['description'] == "École")
				$this->view->assign('ecole', 'selected');
				
			if($result1[0]['description'] == "Bureau")
				$this->view->assign('bureau', 'selected');
				
			if($result1[0]['description'] == "Autre")
				$this->view->assign('autre', 'selected');
				
				
				
				
			if(count($result1) > 1)
			{

				$lestel ="";
				for($i = 1; $i < count($result1); ++$i)
				{
				
			
				$tel = "<div class='row' id='tel".$i."'>";
				$tel = $tel. "<div class='large-4 columns'>";
				$tel = $tel. 	"<select name='typeTel".$i."'>";
				
				
				
				
				if($result1[$i]['description'] == "Cellulaire")
				$tel = $tel. 	  "<option value='Cellulaire' selected>Cellulaire</option>";
				else
				$tel = $tel. 	  "<option value='Cellulaire'>Cellulaire</option>";
				
				
				if($result1[$i]['description'] == "Maison")
					$tel = $tel. 	  "<option value='Domicile' selected>Domicile</option>";
				else
					$tel = $tel. 	  "<option value='Domicile'>Domicile</option>";
					
				if($result1[$i]['description'] == "École")
					$tel = $tel. 	  "<option value='École' selected>École</option>";
				else
					$tel = $tel. 	  "<option value='École'>École</option>";
				
				if($result1[$i]['description'] == "Bureau")
					$tel = $tel. 	  "<option value='Bureau' selected>Bureau</option>";
				else
					$tel = $tel. 	  "<option value='Bureau'>Bureau</option>";
				
				if($result1[$i]['description'] == "Autre")
					$tel = $tel. 	  "<option value='Autre' selected>Autre</option>";
				else
					$tel = $tel. 	  "<option value='Autre'>Autre</option>";
				
				
				
				
				
				
				
				
				
				$tel = $tel. 	"</select>";
				$tel = $tel.  "</div>";
				$tel = $tel. "<div class='large-4 columns left'>";
				$tel = $tel. 	"<input type='text' name='tel".$i."' value='".$result1[$i]['noTelephone']."' placeholder='Votre téléphone' />";
				$tel = $tel . "</div>";
				$tel = $tel . "</div>";
				
				$lestel = $lestel . $tel;
				}
				$this->view->assign('resteTel', $lestel);
				
			}
			
			
			
			$this->view->assign('nom', $result["nom"]);
			$this->view->assign('prenom', $result["prenom"]);
			$this->view->assign('numCivi', $result["numeroCivique"]);
			$this->view->assign('rue', $result["rue"]);
			$this->view->assign('ville', $result["ville"]);
			$this->view->assign('codePostal', $result["codePostal"]);
			$this->view->assign('notHor', $result["notifHoraire"]);
			$this->view->assign('notRem', $result["notifRemplacement"]);
			
			
			$this->view->assign('menu', $this->view->fetch("menu"));
			$this->view->assign('contenu', $this->view->fetch("view-gestionCompte"));
			
			
			//echo$_SESSION['user']->getNom();	
		
		} else {
			$this->view->display('view-connexion');
	  		return;
		}

		$this->view->display('gabarit');
	  }
	  
}

?>
