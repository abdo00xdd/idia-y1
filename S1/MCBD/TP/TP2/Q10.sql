select e.id_emprunteur,em.nom as nom_emprunteur
from emprunteurs as em , emprunts as e , livres as l 
where em.id_emprunteur=e.id_emprunteur AND e.id_livre = l.id_livre
group by em.id_emprunteur
having count(e.id_livre)>1 ;