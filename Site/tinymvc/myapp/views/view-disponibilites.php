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

	<script>
		window.addEventListener('load',actionOnSubmit,false);
		
		function actionOnSubmit(){
			document.getElementById('btnSubmit').addEventListener('click',serializeSchedule,false);
		}
		
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