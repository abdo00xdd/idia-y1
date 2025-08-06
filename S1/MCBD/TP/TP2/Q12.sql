SELECT 
    LI.titre, 
    EMP.nom, EM.date_emprunt 
FROM 
    emprunts AS EM, 
    livres AS LI, 
    emprunteurs AS EMP 
WHERE 
    EM.id_livre = LI.id_livre 
    AND EM.id_emprunteur = EMP.id_emprunteur 
    AND EM.date_retour IS NULL;