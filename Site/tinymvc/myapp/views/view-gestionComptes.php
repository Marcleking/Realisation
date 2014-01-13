
		<div class="medium-12 columns">	
			<h3>Gestion des comptes</h3>
			<div class="panel">
				<div class="row">
				  	<a href="<?=url?>/ajoutUtilisateur" class="button [radius round]" >Ajout d'un utilisateur</a>
					

					<?php  if (isset($success)) { ?>
						<div data-alert class="alert-box success radius">
						  L'employé à bien été supprimé.
						  <a href="#" class="close">&times;</a>
						</div>
					<?php } else if (isset($fail)) { ?>
						<div data-alert class="alert-box warning radius">
						  Une erreur s'est produit lors de la suppression.
						  <a href="#" class="close">&times;</a>
						</div> 
					<?php } ?>
					

					<?=$lstEmploye?>
					
					
					
				</div>	      
			</div>
		
	  	</div>


		
		<script src="<?=url?>/../js/foundation.min.js"></script>
		<script src="<?=url?>/../js/foundation/foundation.abide.js"></script>
		<script src="js/foundation.alert.js"></script>
	  	<script>
		 	$(document).foundation();
		</script>
