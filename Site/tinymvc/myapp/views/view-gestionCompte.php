<div class="panel medium-12 columns">
<?php if (isset($erreur)) { ?>
		<?=$erreur?>
<?php } ?>
	<h3>Gestion du compte</h3>
	<form data-abide action="<?=url?>/gestionCompte" method="POST">
		<div class="row">
			<div class="large-6 columns">
			  <label>Nom(*)</label>
			 <?echo $nom?>
			  <input type="text" id="nom" name="nom" value="<?=$nom?>" placeholder="Nom" />
			</div>
			<div class="large-6 columns">
			  <label>Prénom(*)</label>
			  <input type="text" id="prenom" name="prenom" value="<?=$prenom?>" placeholder="Prénom" />
			</div>
		</div>
		<div class="row">
			<div class="large-6 columns ">
			  <label>Mot de Passe(*)</label>
			  <input type="password" name="motdePasse" placeholder="Mot de Passe" />
			</div>
		
		</div>
		
	<div class="row">
		<div class="large-6 columns">
			<label>Numéro civique</label>
			<input type="text" name="numeroCiv" value="<?=$numCivi?>" placeholder="Numéro civique" />
		</div>
		<div class="large-6 columns">
			<label>Rue</label>
			<input type="text" name="rue" value="<?=$rue?>" placeholder="Rue" />
		</div>
	</div>
	<div class="row">
		<div class="large-6 columns">
			<label>Ville</label>
			<input type="text" name="ville" value="<?=$ville?>" placeholder="Ville" />
		</div>
		<div class="large-6 columns">
			<label>Code postal</label>
			<input type="text" name="codepost" value="<?=$codePostal?>" placeholder="Code postal" />
		</div>
	</div>
	<div class="row">
		<div class="large-7 columns">
			
			<input id="notifHoraire" type="checkbox" value="1" name="notifHoraire" <?php echo ($notHor==1 ? 'checked' : '');?>><label for="notifHoraire">Notifications courriel pour les nouveaux horaires</label><br />
			<input id="notifRemplacement" type="checkbox" value="1" name="notifRemplacement" <?php echo ($notRem==1 ? 'checked' : '');?>><label for="notifRemplacement">Notifications pour tous les remplacements</label>
		</div>
		
	</div>
  

 
 
		<input type="submit" class="button"/>
  
	</form>


  
	
</div>