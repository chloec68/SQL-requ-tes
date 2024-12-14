Requête #17

SELECT *,RECIPE.recipe_name FROM compose
INNER JOIN RECIPE ON compose.id_recipe = RECIPE.id_recipe
WHERE EXISTS (compose.id_ingredient IS NULL)