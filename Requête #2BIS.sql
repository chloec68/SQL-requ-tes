REQUETE #2 

SELECT COUNT(id_ingredient) as nbIngredients FROM compose
INNER JOIN RECIPE ON compose.id_recipe = RECIPE.id_recipe

