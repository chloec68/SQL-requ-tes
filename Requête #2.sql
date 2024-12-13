SELECT recipe_name, COUNT(compose.id_ingredient) AS nb_ingredients
FROM recipe 
INNER JOIN compose ON recipe.id_recipe = compose.id_recipe
GROUP BY recipe.recipe_name

