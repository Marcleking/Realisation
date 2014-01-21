<!DOCTYPE html>
<html>
	<head>
		<title>Le coureur nordique</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="<?=url?>/../css/foundation.css" />
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">



	</head>
	<body>
		<div class="row">
			<?=$entete?>
		</div>
		<div class="row">
			<div class="medium-5 medium-centered columns">
				<!-- Formulaire de réinisialisation du mot de passe -->
				<form data-abide action="<?=url?>/motDePasse/reinitMdp" method="POST">
					<div class="panel">
						<h1>Réinisialisation du mot de passe</h1>
		
						<div>
						  	<label for="user">Nouveau mot de passe</label>
					      	<input type="password" id="pwd" name="pwd" placeholder="Entrez votre mot de passe..." required />
					      	<small class="error">Veuillez indiquez votre mot de passe.</small>
				      	</div>

				      	<div>
						  	<label for="user">Confirmation</label>
					      	<input type="password" id="pwd2" name="pwd2" placeholder="Encore..." required />
					      	<small class="error">Veuillez indiquez la confirmation de votre mot de passe.</small>
				      	</div>

				      	<?php if (isset($courriel) && isset($str)) { ?>
				      		<input type="hidden" name="courriel" value="<?=$courriel?>" />
				      		<input type="hidden" name="str" value="<?=$str?>" />
				      	<?php } ?>

				      	<div>
							<input type="submit" class="button" value="Réinisialiser votre mot de passe" />
						</div>
				      	
				      	
							
			      	</div>
			  	</form>
			</div>
	  	</div>

		<script src="<?=url?>/../js/jquery.js"></script>
		<script src="<?=url?>/../js/foundation.min.js"></script>
		<script src="<?=url?>/../js/foundation/foundation.alert.js"></script>
	  	<script>
		 	$(document).foundation();
		</script>
	</body>
</html>