CREATE PROCEDURE Connexion (in p_noEmploye INT, 
							in p_mdp varchar(30), 
							OUT p_nom varchar(30), 
							OUT p_type varchar(45))
    READS SQL DATA

    SELECT nom, typeEmploye into p_nom, p_type 
    FROM employe 
    where noEmploye = p_noEmploye
    AND motDePasse = p_mdp;


DELIMITER $$
CREATE OR REPLACE PROCEDURE AjouterUtilisateur(IN p_nom varchar(30), 
									IN p_prenom varchar(30), 
									IN p_motDePasse varchar(40), 
									IN p_possesseurCle tinyint(1), 
									IN p_typeEmploye varchar(45), 
									IN p_indPriorite int(11), 
									IN p_formationVetement tinyint(1), 
									IN p_formationChaussure tinyint(1), 
									IN p_formationCaissier tinyint(1), 
									IN p_respHoraireConflit tinyint(1))
BEGIN
INSERT INTO employe (nom, prenom, motDePasse, possesseurCle, typeEmploye, indPriorite, formationVetement, formationChaussure, formationCaissier, respHoraireConflit) VALUES (p_nom, p_prenom, SHA1(p_motDePasse), p_possesseurCle, p_typeEmploye, p_indPriorite, p_formationVetement, p_formationChaussure, p_formationCaissier, p_respHoraireConflit);
SELECT * FROM employe where noEmploye = (Select noEmploye FROM employe Order By noEmploye Desc Limit 1);
END