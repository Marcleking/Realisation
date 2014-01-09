<div class="panel medium-12 columns">
	<h3>Ajout d'un utilisateur</h3>
	
<form data-abide action="<?=url?>/ajoutUtilisateur" method="POST">
  <div class="row">
    <div class="large-6 columns <?=$erreurNom?>">
      <label>Nom(*)</label>
      <input type="text" id="nom" name="nom" placeholder="Nom" />
    </div>
	<div class="large-6 columns <?=$erreurPrenom?>">
      <label>Prénom(*)</label>
      <input type="text" id="prenom" name="prenom" placeholder="Prénom" />
	  
    </div>
  </div>
  <div class="row">
    <div class="large-6 columns <?=$erreurMotDePasse?>">
      <label>Mot de Passe(*)</label>
      <input type="password" name="motdePasse" placeholder="Mot de Passe" />
    </div>
	<div class="large-6 columns">
      <label>Courriel</label>
      <input type="text" name="courriel" placeholder="Courriel" />
    </div>
  </div>
  
	<div class="row">
		<div class="large-6 columns">
			<label>Numéro civique</label>
			<input type="text" name="numeroCiv" placeholder="Numéro civique" />
		</div>
		<div class="large-6 columns">
			<label>Rue</label>
			<input type="text" name="rue" placeholder="Rue" />
		</div>
	</div>
	<div class="row">
		<div class="large-6 columns">
			<label>Ville</label>
			<input type="text" name="ville" placeholder="Ville" />
		</div>
		<div class="large-6 columns">
			<label>Code postal</label>
			<input type="text" name="codepost" placeholder="Code postal" />
		</div>
	</div>
	<div class="row">
		<div class="large-4 columns">
			<input id="cle" type="checkbox" value="1" name="cle"><label for="cle">Possesseur d'une clé</label><br />
			<input id="Conflit" type="checkbox" value="Oui" name="conflit"><label for="Conflit">Responsable Conflit</label>
		</div>
		<div class="large-4 columns">
		  <label>Type employé</label>
		  <select name="typeEmp">
			<option value="Employé">Employé</option>
			<option value="Gestionnaire">Gestionnaire</option>
		  </select>
		</div>
		<div class="large-4 columns">
			
		</div>
	</div>
	
	<div class="row">
		<div class="large-6 columns">
			<label>Formation</label>
			<input id="Vetement" type="checkbox" name="Vetement" ><label for="Vetement">Vétement</label>
			<input id="Chaussure" type="checkbox" name="Chaussure" ><label for="Chaussure">Chaussure</label>
			<input id="Caissier" type="checkbox" name="Caissier" ><label for="Caissier">Caissier</label>
		</div>
	</div>

 
 
  <input type="submit" class="button"/>
  
</form>

</div>