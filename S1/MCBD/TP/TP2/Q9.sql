SELECT id_emprunteur , nom as nom_emprunteur ,avg(datediff(date_retour,date_emprunt)) as duree_moyenne
FROM emprunts natural join emprunteurs
group by id_emprunteur;
