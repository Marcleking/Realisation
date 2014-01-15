


<div class="panel medium-12 columns">


	<?php  if (isset($success)) { ?>
		<div data-alert class="alert-box success radius">
		  Modifications appliqué
		  <a href="#" class="close">&times;</a>
		</div>
	<?php } else if (isset($fail)) { ?>
		<div data-alert class="alert-box warning radius">
		  Remplir les champs obligatoires
		  <a href="#" class="close">&times;</a>
		</div> 
	<?php } ?>





	<h3>Gestion du compte</h3>
	<form data-abide action="<?=url?>/gestionCompte" method="POST">
		<div class="row">
			<div class="large-6 columns">
			  <label>Nom(*)</label>
			  <input type="text" id="nom" name="nom" value="<?=$nom?>" placeholder="Nom" />
			</div>
			<div class="large-6 columns">
			  <label>Prénom(*)</label>
			  <input type="text" id="prenom" name="prenom" value="<?=$prenom?>" placeholder="Prénom" />
			</div>
		</div>
		<div class="row">
			<div class="large-6 columns ">
			  <label>Nouveau mot de passe</label>
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

	<div id="lesTels">
		<div class="row" id="tel0">
			<div class="large-4 columns">
				<select name="typeTel0">
				  <option value="Cellulaire">Cellulaire</option>
				  <option value="Domicile">Domicile</option>
				  <option value="École">École</option>
				  <option value="Bureau">Bureau</option>
				  <option value="Autre">Autre</option>
				</select>
			</div>
			<div class="large-4 columns">
				<input type="text" name="tel0" placeholder="Votre téléphone" />
			</div>
			<div class="large-4 columns">
				<a href="#" id="telPlus"><i class="fa fa-plus"></i></a>
			</div>
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


  <script type="text/javascript">
  	var i = 1;
	(function(){
		document.getElementById('telPlus').addEventListener('click', ajoutTel, false);
	})();

	function ajoutTel() {
		$("#tel0").after("<div class='row' id='tel"+i+"'>"+
			"<div class='large-4 columns'>"+
				"<select name='typeTel"+i+"'>"+
				  "<option value='Cellulaire'>Cellulaire</option>"+
				  "<option value='Domicile'>Domicile</option>"+
				  "<option value='École'>École</option>"+
				  "<option value='Bureau'>Bureau</option>"+
				  "<option value='Autre'>Autre</option>"+
				"</select>"+
			"</div>"+
			"<div class='large-4 columns left'>"+
				"<input type='text' name='tel"+i+"' placeholder='Votre téléphone' />"+
			"</div>");

		i++;
	}
</script>
	
</div>

