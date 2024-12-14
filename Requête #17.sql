Requête #17

SELECT *,RECIPE.recipe_name FROM compose
INNER JOIN RECIPE ON compose.id_recipe = RECIPE.id_recipe
WHERE compose.id_ingredient = NULL