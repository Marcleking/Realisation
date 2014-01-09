<?php 
	
?>


<div class="medium-12 columns">
	<style>
		#feedback { font-size: 1.4em; }
		.selectable .ui-selecting { background: #FECA40; }
		.selectable .ui-selected { background: #F39814; color: white; }
		.selectable { list-style-type: none; margin: 0; padding: 0; width: 60%; }
		.selectable li { margin: 3px; padding: 0.4em; font-size: 1.4em; height: 18px; }
		
		.contenu {
			overflow: auto;
		}

		html {
			overflow: scroll;
		}
		
		.off-canvas-list hr {
			display: none;
		}

		td div{	
			width:100%;
			height:10px;}
		.emp1{background:blue;}
		.emp2{background:red;}
		.emp3{background:green;}
		.emp4{background:teal;}
		td, th{
			width:40px;
			margin-bottom:10px;
		}
		tr > td{
			padding-bottom:10px;
		}
	</style>
	
	<script>
		 	$(document).foundation();
		 	
		 	$(document).foundation('joyride', 'start');
			$(function() {
				
				var lignes = document.getElementsByClassName('selectable');
				
				for(var i = 0; i < lignes.length; i++){
					
					lignes[i].id = "selectable" + i;
					$('#selectable' + i).bind("mousedown", function(e){
							e.metaKey = true;
						}).bind("mouseup",function(e){
							
						}).selectable({	filter: ":not(.en-tete)"});
				}
			});
	</script>

	<script type="text/javascript">
	
		window.addEventListener('load',actionOnSubmit,false);
		
		function actionOnSubmit(){
			document.getElementById('btnSubmit').addEventListener('click',serializeSchedule,false);
		}
	
		var myDays= ["Dimanche","Lundi","Mardi","Mercredi","Jeudi","Vendredi","Samedi"];
		var mois = [ "Janvier", "Février", "Mars", "Avril", "Mai", "Juin",
				   "Juillet", "Août", "Septembre", "Octobre", "Novembre", "Décembre" ];
						 
		function startAndEndOfWeek(date)
		{
		  // If no date object supplied, use current date
		  // Copy date so don't modify supplied date
		  var now = date? new Date(date) : new Date();
		  // Get the previous Dimanche
		  var Dimanche = new Date(now);
		  Dimanche.setDate(Dimanche.getDate() - Dimanche.getDay());

		  // Get next Sunday
		  var Samedi = new Date(now);
		  Samedi.setDate(Samedi.getDate() - Samedi.getDay() + 6);
			
		  var dateSemaineDebut = Dimanche.getDate().toString() + " " + mois[Dimanche.getMonth()] + " " + Dimanche.getFullYear(); 
		  var dateSemaineFin = Samedi.getDate().toString() + " " + mois[Samedi.getMonth()] + " " + Samedi.getFullYear();
		  // Return array of date objects
		  return [dateSemaineDebut, dateSemaineFin];
		}
		
		function remplirListeDate()
		{
			var date = new Date();
			var vecteurDateSemaine = [];
			
			for(i = 5; i >= 0; i--)
			{
				vecteurDateSemaine.push(startAndEndOfWeek(date - (7 * i)));
			}
			
			for(i = 0; i <= 10; i++)
			{
				vecteurDateSemaine.push(startAndEndOfWeek(date + (7 * i)));
			}
			
			//Récupérer la liste qui existe
			var uneListeDate = document.getElementById("listeDate");
				
			for(i = 0; i < vecteurDateSemaine.length; i++)
			{
				var option = document.createElement("option");
				option.text = vecteurDateSemaine[i][0] + vecteurDateSemaine[i][1];
				uneListeDate.options.add(option);
			}
		}
		remplirListeDate();
	
		function serializeSchedule(){
			var tableauHoraire = document.getElementById('horaire');
			var horaire = {};
			
			/*
			
				Données nécessaires pour enregistrer une semaine de disponibilités
				
				Année
				No de la semaine dans l'année
				Nombres d'heures souhaitées
				
				Nombre de semaines à répéter
				
				Pour chaque bloc de consécutif :
				Jour de la semaine
				Heure de début de la période
				Heure de fin de la période
			
			*/
			
			// Trouver l'année de la semaine en cours
			//horaire.annee = ;	
			
			
			alert(horaire.annee);
			
			for ( var i = 0; i < tableauHoraire.rows.length; i++){
				for ( var j = 0; j < tableauHoraire.rows[i].cells.length; j++){
					
					if (tableauHoraire.rows[i].cells[j])
					{}
				}
			}
			
		}
		
	</script>

	<h3>Saisie des disponibilités</h3>
	
	<form>
		
		<table id="horaire">
			<thead>
				<tr>
					<th></th>
					<th>8:00</th>
					<th>9:00</th>
					<th>10:00</th>
					<th>11:00</th>
					<th>12:00</th>
					<th>13:00</th>
					<th>14:00</th>
					<th>15:00</th>
					<th>16:00</th>
					<th>17:00</th>
					<th>18:00</th>
				</tr>
			</thead>
			
			<tbody>
				<tr class="selectable">
					<th class="en-tete">Dimanche</th>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
				</tr>
				
				<tr class="selectable">
					<th class="en-tete">Lundi</th>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
				</tr>
				
				<tr class="selectable">
					<th class="en-tete">Mardi</th>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
				</tr>
				
				<tr class="selectable">
					<th class="en-tete">Mercredi</th>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
				</tr>
				
				<tr class="selectable">
					<th class="en-tete">Jeudi</th>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
				</tr>
				
				<tr class="selectable">
					<th class="en-tete">Vendredi</th>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
				</tr>
				
				<tr class="selectable">
					<th class="en-tete">Samedi</th>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
					<td class="ui-widget-content"></td>
				</tr>
			</tbody>
		</table>
		
		<label for="repetition">Répéter pour</label>
		<input type="number" id="repetition" name="repetition" />
		<label for="repetition">semaines</label>
		
		<label for="nbDesire"> Nombres d'heures désirées : </label>
		<input type="number" id="nbDesire" name="nbDesire" />
		
		<input id="btnSubmit" type="submit" value="Envoyer" action="view-disponibilites.php" class="button right radius" />
		
	</form>
	
</div>