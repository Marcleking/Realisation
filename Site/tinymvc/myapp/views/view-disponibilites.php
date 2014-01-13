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
	
	<form id="formDispo">
		
		<label for="repetition">Répéter pour</label>
		<input type="number" id="repetition" name="repetition" />
		<label for="repetition">semaines</label>
		
		<label for="nbDesire"> Nombres d'heures désirées : </label>
		<input type="number" id="nbDesire" name="nbDesire" />
		
		<input id="btnSubmit" type="submit" value="Envoyer" action="view-disponibilites.php" class="button right radius" />
		
	</form>
	
	<script type="text/javascript">
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
			
		  var dateSemaineDebut = Dimanche.getDate().toString() + " " + mois[Dimanche.getMonth()] + " " + Dimanche.getFullYear() + " au "; 
		  var dateSemaineFin = Samedi.getDate().toString() + " " + mois[Samedi.getMonth()] + " " + Samedi.getFullYear();
		  // Return array of date objects
		  return [dateSemaineDebut, dateSemaineFin];
		}
		
		function remplirListeDate()
		{
			var vecteurDateSemaine = [];
			var uneListeDate = document.getElementById("formDispo");
			var elementListe = document.createElement('select');
			
			for(i = 5; i > 0; i--)
			{
				var jours = new Date();
				jours.setDate(jours.getDate() - 7 * i);
				vecteurDateSemaine.push(startAndEndOfWeek(jours));
			}
			
			for(i = 0; i <= 10; i++)
			{
				var jours = new Date();
				jours.setDate(jours.getDate() + 7 * i);
				vecteurDateSemaine.push(startAndEndOfWeek(jours));
			}
			
			for(i = 0; i < vecteurDateSemaine.length; i++)
			{
				var option = document.createElement("option");
				option.text = vecteurDateSemaine[i][0] + vecteurDateSemaine[i][1];
				elementListe.options.add(option);
			}
			
			elementListe.options.selectedIndex = 5;
			
			uneListeDate.appendChild(elementListe);
		}
		
		function genererTableau()
		{
			var heureOuverture = 9;
			var tableau;
			tableau = document.createElement("table");
			var entete;
			entete = document.createElement("thead");
			var ligne;
			ligne = document.createElement("tr");
			
			var celluleVide = document.createElement("th");
			ligne.appendChild(celluleVide);
			
			for (var i=0; i<13; i++)
			{
			  var nouvRangee = document.createElement("th");
			  nouvRangee.className = "en-tete";
			  nouvRangee.colSpan = 2;
			  nouvRangee.innerHTML = (heureOuverture + i) + ":00";
			  ligne.appendChild(nouvRangee);
			}
			entete.appendChild(ligne);
			tableau.appendChild(entete);
			
			var bodyTableau;
			bodyTableau = document.createElement("tbody");
			var vecteurJoursSemaine = ["Dimanche", "Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi"];
			
			for(var i=0; i<7; i++)
			{
				var lesLignes = document.createElement("tr");
				var lesJours = document.createElement("th");
				lesLignes.className = "selectable";
				lesJours.className = "en-tete";
				lesJours.innerHTML = vecteurJoursSemaine[i];
				
				lesLignes.appendChild(lesJours);
				
				for (var j=0; j<26; j++)
				{
					var lesCellules = document.createElement("td");
					lesCellules.className = "ui-widget-content";
					lesLignes.appendChild(lesCellules);
				}
				bodyTableau.appendChild(lesLignes);
			}
			tableau.appendChild(bodyTableau);
			document.getElementById("formDispo").appendChild(tableau);
		}
		genererTableau();
		remplirListeDate();
	</script>
</div>