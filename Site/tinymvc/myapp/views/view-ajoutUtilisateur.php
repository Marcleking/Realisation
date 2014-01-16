<div class="panel medium-12 columns">
	<h3>Ajout d'un utilisateur</h3>

	<?php  if (isset($success)) { ?>
		<div data-alert class="alert-box success radius">
		  L'employé à bien été ajouté.
		  <a href="#" class="close">&times;</a>
		</div>
	<?php } else if (isset($fail)) { ?>
		<div data-alert class="alert-box warning radius">
		  Une erreur s'est produit lors de l'ajout.
		  <a href="#" class="close">&times;</a>
		</div> 
	<?php } ?>
	
	<form data-abide action="<?=url?>/ajoutUtilisateur" method="POST">
	  <div class="row">
		<div class="large-6 columns <?=$erreurCourriel?>">
	      <label>Courriel</label>
	      <input type="email" name="courriel" placeholder="Courriel" />
	    </div>
		<div class="large-6 columns">
			  <label>Type employé</label>
			  <select name="typeEmp">
				<option value="Employé">Employé</option>
				<option value="Gestionnaire">Gestionnaire</option>
			  </select>
			</div>
	  </div>
		
		
		<div class="row">
			<div class="large-7 columns">
				<input id="cle" type="checkbox" value="1" name="cle"><label for="cle">Possesseur d'une clé</label>
				<input id="Conflit" type="checkbox" value="Oui" name="conflit"><label for="Conflit">Responsable Conflit</label>
			</div>
			


			<div class="large-5 columns">
				<label>Formation</label>
				<input id="Vetement" type="checkbox" name="Vetement" ><label for="Vetement">Vétement</label>
				<input id="Chaussure" type="checkbox" name="Chaussure" ><label for="Chaussure">Chaussure</label>
				<input id="Caissier" type="checkbox" name="Caissier" ><label for="Caissier">Caissier</label>
			</div>
		</div>

	 
	 
	  <input type="submit" class="button"/>
	  
	</form>

</div>

  