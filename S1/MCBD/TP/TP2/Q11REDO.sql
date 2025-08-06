SELECT a.id_auteur, COUNT(emprunts.id_livre) AS Nombre_Emprunts 
FROM auteurs as a
JOIN livres as l ON a.id_auteur = l.auteur_id 
JOIN emprunts as e ON l.id_livre = e.livre_id 
GROUP BY auteur_id 
ORDER BY Nombre_Emprunts DESC;
