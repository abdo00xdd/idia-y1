SELECT distinct id_emprunt,emprunteurs.nom as nom_emprunteur ,livres.titre,auteurs.nom
FROM emprunts,emprunteurs,livres,auteurs
;
