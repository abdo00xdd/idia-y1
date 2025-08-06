select   count(*) as nombre_livres , annee_publication as annee
from livres
group by annee_publication ;