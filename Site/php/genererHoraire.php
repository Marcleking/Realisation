<?php
include('utilGenererHoraire.php');
$Ratio = genererRatio();

var_dump($Ratio);

function genererRatio() {
	
	$RatioDemiHrs = arrayRatioSemaine();
	for($k = 0; $k < count(lstUtilHoraire()); $k++) {
		
		if(isset(lstUtilHoraire()[$k]['listeDispoSemaine']) && count(lstUtilHoraire()[$k]['listeDispoSemaine']) != 0) {
		
			for($l = 0; $l < count(lstUtilHoraire()[$k]['listeDispoSemaine']); $l++) {
				$lesHrsChiffre = gestionHrs(lstUtilHoraire()[$k]['listeDispoSemaine'][$l]['heureDebut'], lstUtilHoraire()[$k]['listeDispoSemaine'][$l]['heureFin']);
				
				for($i = ($lesHrsChiffre[0]-9)*2; $i <= (($lesHrsChiffre[0]-9)*2 + ($lesHrsChiffre[1] - $lesHrsChiffre[0]) * 2 ) ; $i++) {
					switch (lstUtilHoraire()[$k]['listeDispoSemaine'][$l]['jour'] ) {
					case "dimanche":
							if(lstUtilHoraire()[$k]['formationVetement'] == 1) {
								$RatioDemiHrs["ratioVetement"][0][$i]["ratio"] += 1;
								$RatioDemiHrs["ratioVetement"][0][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}

							
							if(lstUtilHoraire()[$k]['formationChaussure'] == 1){
								$RatioDemiHrs["ratioChaussure"][0][$i]["ratio"]  += 1;
								$RatioDemiHrs["ratioChaussure"][0][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
							
							if(lstUtilHoraire()[$k]['formationCaissier'] == 1){
								$RatioDemiHrs["ratioCaissier"][0][$i]["ratio"]  += 1;
								$RatioDemiHrs["ratioCaissier"][0][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
						break;
					case "lundi":
							if(lstUtilHoraire()[$k]['formationVetement'] == 1){
								$RatioDemiHrs["ratioVetement"][1][$i]["ratio"]  += 1;
								$RatioDemiHrs["ratioVetement"][1][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
							
							if(lstUtilHoraire()[$k]['formationChaussure'] == 1){
								$RatioDemiHrs["ratioChaussure"][1][$i]["ratio"]  += 1;
								$RatioDemiHrs["ratioChaussure"][1][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
							
							if(lstUtilHoraire()[$k]['formationCaissier'] == 1){
								$RatioDemiHrs["ratioCaissier"][1][$i]["ratio"]  += 1;
								$RatioDemiHrs["ratioCaissier"][1][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
						break;
					case "mardi":	
							if(lstUtilHoraire()[$k]['formationVetement'] == 1){
								$RatioDemiHrs["ratioVetement"][2][$i]["ratio"]  += 1;	
								$RatioDemiHrs["ratioVetement"][2][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
							
							if(lstUtilHoraire()[$k]['formationChaussure'] == 1){
								$RatioDemiHrs["ratioChaussure"][2][$i]["ratio"]  += 1;	
								$RatioDemiHrs["ratioChaussure"][2][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
							
							if(lstUtilHoraire()[$k]['formationCaissier'] == 1){
								$RatioDemiHrs["ratioCaissier"][2][$i]["ratio"]  += 1;	
								$RatioDemiHrs["ratioCaissier"][2][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
						break;
					case "mercredi":
							if(lstUtilHoraire()[$k]['formationVetement'] == 1){
								$RatioDemiHrs["ratioVetement"][3][$i]["ratio"]  += 1;	
								$RatioDemiHrs["ratioVetement"][3][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
							
							if(lstUtilHoraire()[$k]['formationChaussure'] == 1){
								$RatioDemiHrs["ratioChaussure"][3][$i]["ratio"]  += 1;	
								$RatioDemiHrs["ratioChaussure"][3][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
							
							if(lstUtilHoraire()[$k]['formationCaissier'] == 1){
								$RatioDemiHrs["ratioCaissier"][3][$i]["ratio"]  += 1;
								$RatioDemiHrs["ratioCaissier"][3][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
							
						break;
					case "jeudi":
							if(lstUtilHoraire()[$k]['formationVetement'] == 1){
								$RatioDemiHrs["ratioVetement"][4][$i]["ratio"]  += 1;
								$RatioDemiHrs["ratioVetement"][4][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
							
							if(lstUtilHoraire()[$k]['formationChaussure'] == 1){
								$RatioDemiHrs["ratioChaussure"][4][$i]["ratio"]  += 1;	
								$RatioDemiHrs["ratioChaussure"][4][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
							
							if(lstUtilHoraire()[$k]['formationCaissier'] == 1){
								$RatioDemiHrs["ratioCaissier"][4][$i]["ratio"]  += 1;
								$RatioDemiHrs["ratioCaissier"][4][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
							
						break;
					case "vendredi":
							if(lstUtilHoraire()[$k]['formationVetement'] == 1){
								$RatioDemiHrs["ratioVetement"][5][$i]["ratio"]  += 1;
								$RatioDemiHrs["ratioVetement"][5][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
							
							if(lstUtilHoraire()[$k]['formationChaussure'] == 1){
								$RatioDemiHrs["ratioChaussure"][5][$i]["ratio"]  += 1;
								$RatioDemiHrs["ratioChaussure"][5][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
							
							if(lstUtilHoraire()[$k]['formationCaissier'] == 1){
								$RatioDemiHrs["ratioCaissier"][5][$i]["ratio"]  += 1;	
								$RatioDemiHrs["ratioCaissier"][5][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
							
						break;
					case "samedi":
							if(lstUtilHoraire()[$k]['formationVetement'] == 1){
								$RatioDemiHrs["ratioVetement"][6][$i]["ratio"]  += 1;	
								$RatioDemiHrs["ratioVetement"][6][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
							
							if(lstUtilHoraire()[$k]['formationChaussure'] == 1){
								$RatioDemiHrs["ratioChaussure"][6][$i]["ratio"]  += 1;
								$RatioDemiHrs["ratioChaussure"][6][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
							
							if(lstUtilHoraire()[$k]['formationCaissier'] == 1){
								$RatioDemiHrs["ratioCaissier"][6][$i]["ratio"]  += 1;
								$RatioDemiHrs["ratioCaissier"][6][$i]['listEmploye'] = lstUtilHoraire()[$k];
							}
						break;
					}
				}
			}
			
		}	
	}
	
	
	$listRessource = lstRessource();
	
	for($i = 0; $i < count($listRessource); $i++) {
		$lesHrsChiffre = gestionHrs($listRessource[$i]['heureDebut'], $listRessource[$i]['heureFin']);
		for($j = ($lesHrsChiffre[0]-9)*2; $j <= (($lesHrsChiffre[0]-9)*2 + ($lesHrsChiffre[1] - $lesHrsChiffre[0]) * 2 ) ; $j++) {
		
		
		

  
			switch ($listRessource[$i]['jour']) {
				case 0:
					$RatioDemiHrs["ratioVetement"][0][$j]["ratio"]  /= $listRessource[$i]['nbEmpVetements'];	
					$RatioDemiHrs["ratioChaussure"][0][$j]["ratio"]  /= $listRessource[$i]['nbEmpChaussures'];	
					$RatioDemiHrs["ratioCaissier"][0][$j]["ratio"]  /= $listRessource[$i]['nbEmpCaissier'];	
					break;
				case 1:
					$RatioDemiHrs["ratioVetement"][1][$j]["ratio"]  /= $listRessource[$i]['nbEmpVetements'];
					$RatioDemiHrs["ratioChaussure"][1][$j]["ratio"]  /= $listRessource[$i]['nbEmpChaussures'];
					$RatioDemiHrs["ratioCaissier"][1][$j]["ratio"]  /= $listRessource[$i]['nbEmpCaissier'];
					break;
				case 2:	
					$RatioDemiHrs["ratioVetement"][2][$j]["ratio"]  /= $listRessource[$i]['nbEmpVetements'];
					$RatioDemiHrs["ratioChaussure"][2][$j]["ratio"]  /= $listRessource[$i]['nbEmpChaussures'];
					$RatioDemiHrs["ratioCaissier"][2][$j]["ratio"]  /= $listRessource[$i]['nbEmpCaissier'];					
					break;
				case 3:
					$RatioDemiHrs["ratioVetement"][3][$j]["ratio"]  /= $listRessource[$i]['nbEmpVetements'];
					$RatioDemiHrs["ratioChaussure"][3][$j]["ratio"]  /= $listRessource[$i]['nbEmpChaussures'];
					$RatioDemiHrs["ratioCaissier"][3][$j]["ratio"]  /= $listRessource[$i]['nbEmpCaissier'];
					break;
				case 4:
					$RatioDemiHrs["ratioVetement"][4][$j]["ratio"]  /= $listRessource[$i]['nbEmpVetements'];
					$RatioDemiHrs["ratioChaussure"][4][$j]["ratio"]  /= $listRessource[$i]['nbEmpChaussures'];
					$RatioDemiHrs["ratioCaissier"][4][$j]["ratio"]  /= $listRessource[$i]['nbEmpCaissier'];
					break;
				case 5:
					$RatioDemiHrs["ratioVetement"][5][$j]["ratio"]  /= $listRessource[$i]['nbEmpVetements'];
					$RatioDemiHrs["ratioChaussure"][5][$j]["ratio"]  /= $listRessource[$i]['nbEmpChaussures'];
					$RatioDemiHrs["ratioCaissier"][5][$j]["ratio"]  /= $listRessource[$i]['nbEmpCaissier'];
					break;
				case 6:
					$RatioDemiHrs["ratioVetement"][6][$j]["ratio"]  /= $listRessource[$i]['nbEmpVetements'];
					$RatioDemiHrs["ratioChaussure"][6][$j]["ratio"]  /= $listRessource[$i]['nbEmpChaussures'];
					$RatioDemiHrs["ratioCaissier"][6][$j]["ratio"] /= $listRessource[$i]['nbEmpCaissier'];
				break;
			}
		}
	}
	
	
	
	return $RatioDemiHrs;
}

?>