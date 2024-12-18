Afficher les recettes qui ne nécessitent pas d’ingrédients coûtant plus de 2€ par unité de mesure

SELECT recipe.recipe_name,recipe.id_recipe FROM recipe

WHERE recipe.id_recipe
NOT IN (SELECT recipe.id_recipe FROM recipe INNER JOIN compose ON recipe.id_recipe = compose.id_recipe 
INNER JOIN ingredient ON ingredient.id_ingredient = compose.id_ingredient
WHERE ingredient.price >2)