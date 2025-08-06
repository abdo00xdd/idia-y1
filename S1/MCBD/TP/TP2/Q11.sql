SELECT 
    AU.nom, 
    COUNT(EM.id_livre) AS Nombre_Emprunts 
FROM 
    emprunts AS EM, 
    livres AS LI, 
    auteurs AS AU 
WHERE 
    EM.id_livre = LI.id_livre 
    AND LI.id_auteur = AU.id_auteur 
GROUP BY 
    AU.id_auteur, 
    AU.nom 
ORDER BY 
    Nombre_Emprunts DESC;