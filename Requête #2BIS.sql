REQUETE #2 

SELECT COUNT(id_ingredient) FROM compose
INNER JOIN RECIPE ON compose.id_recipe = RECIPE.id_recipe
GROUP BY RECIPE.id_recipe;
