<div class="panel medium-12 columns">


	<?php  if (isset($success)) { ?>
		<div data-alert class="alert-box success radius">
		  Message envoyé avec succès
		  <a href="#" class="close">&times;</a>
		</div>
	<?php } else if (isset($fail)) { ?>
		<div data-alert class="alert-box warning radius">
		  Remplir les champs obligatoires
		  <a href="#" class="close">&times;</a>
		</div>
	<?php } ?>

	<h3>Envoyer un message</h3>
		<form data-abide action="<?=url?>/envoyerMessage" method="POST">
			<div class="row">
				<div class="large-6 columns">
				  <label>Titre(*)</label>
				  <input type="text" id="titre" name="titre" placeholder="Titre du message" />
				</div>
			</div>			
			
			<div class="row">
				<div class="large-12 columns">
				<label>Message(*)</label>
				  <textarea style="resize: none; height: 190px" id="message" name="message" placeholder="Message"></textarea>
				</div>
			</div>
			
			<input type="submit" class="button"/>
		</form>
</div>