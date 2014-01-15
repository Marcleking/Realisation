<div class="panel medium-12 columns">
	<?php  if (isset($success)) { ?>
		<div data-alert class="alert-box success radius">
		  Modifications appliqué
		  <a href="#" class="close">&times;</a>
		</div>
	<?php } else if (isset($fail)) { ?>
		<div data-alert class="alert-box warning radius">
		  Vous devez avoir un courriel valide et disponible dans un des comptes des employés!
		  <a href="#" class="close">&times;</a>
		</div> 
	<?php } ?>
	<h3>Gestion du compte</h3>
	<form data-abide action="<?=url?>/modificationsAdmin?courriel=<?=$courriel?>" method="POST">
		<div class="row">
			<div class="large-6 columns">
			  <label>Nom</label>
			  <input type="text" id="nom" name="nom" value="<?=$nom?>" placeholder="Nom" />
			</div>
			<div class="large-6 columns">
			  <label>Prénom</label>
			  <input type="text" id="prenom" name="prenom" value="<?=$prenom?>" placeholder="Prénom" />
			</div>
		</div>
		<div class="row">
			<div class="large-6 columns ">
			  <label>Mot de Passe</label>
			  <input type="password" name="motdePasse" placeholder="Mot de Passe" />
			</div>
			<div class="large-6 columns">
			  <label>Courriel</label>
			  <input type="text" name="motdePasse1" value="<?=$_GET['courriel']?>" placeholder="Courriel" />
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
					
			  <label>Type employé</label>
			  <select name="typeEmp">
				<option value="Employé">Employé</option>
				<option value="Gestionnaire" <?php if($typeEmploye == "Gestionnaire") echo "selected"; ?>>Gestionnaire</option>
			  </select>
		
		</div>
		<div class="large-5 columns">
				<label>Formation</label>
				<input id="Vetement" type="checkbox" name="Vetement" <?php echo ($formationVetement==1 ? 'checked' : '');?>><label for="Vetement" >Vétement</label><br />
				<input id="Chaussure" type="checkbox" name="Chaussure" <?php echo ($formationChaussure==1 ? 'checked' : '');?>><label for="Chaussure" >Chaussure</label><br />
				<input id="Caissier" type="checkbox" name="Caissier"  <?php echo ($formationCaissier==1 ? 'checked' : '');?>><label for="Caissier">Caissier</label><br />
		</div>
	</div>
	
	<div class="row">

	  </div>
	  
	  <div class="row">
			<div class="large-7 columns">
				<input id="cle" type="checkbox" value="1" name="cle" <?php echo ($possesseurCle==1 ? 'checked' : '');?>><label for="cle">Possesseur d'une clé</label>
				<input id="Conflit" type="checkbox" value="Oui" name="conflit" <?php echo ($respHoraireConflit==1 ? 'checked' : '');?>><label for="Conflit">Responsable Conflit</label>
			</div>
			


			
		</div>
  


 
 
		<input type="submit" class="button"/>
  
	</form>


  
	
</div>