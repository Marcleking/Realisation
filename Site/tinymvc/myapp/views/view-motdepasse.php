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
				<form data-abide action="<?=url?>/motDePasse" method="POST">
					<div class="panel">
						<h1>Réinisialisation du mot de passe</h1>
		
						<div>
						  	<label for="user">Numéro d'utilisateur</label>
					      	<input type="text" id="user" name="user" placeholder="Entrez votre nom d'utilisateur..." required />
					      	<small class="error">Veuillez indiquez votre nom d'utilisateur.</small>
				      	</div>

				      	<div>
							<input type="submit" class="button" value="Réinisialiser votre mot de passe" />
						</div>
				      	
				      	<?php if (isset($success)) { ?>
				      		<div data-alert class='alert-box success'>
								La demande de réinisialisation à bien été fait. Allez voir vos courriel pour la suite des étapes à suivre.
								<a href="#" class="close">&times;</a>
							</div>
						<?php } else if (isset($fail)) { ?>
							<div data-alert class='alert-box warning'>
								Une erreur s'est produit, veuillez réessayer plus tard.
								<a href="#" class="close">&times;</a>
							</div>
						<?php } ?>
							
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