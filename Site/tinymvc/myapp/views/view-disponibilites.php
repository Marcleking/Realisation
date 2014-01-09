<div class="medium-12 columns">
	<h3>Saisie des disponibilités</h3>
	
	<script type="text/javascript">
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
	</script>
	
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
	<a href="#" class="button right radius">Envoyer</a>
</div>