select titre , nom , nationalite 
from auteurs , livres
where auteurs.id_auteur = livres.id_auteur;