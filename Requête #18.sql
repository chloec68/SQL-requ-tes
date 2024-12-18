- Trouver les ingrédients qui sont utilisés dans au moins 3 recettes
SELECT ingredient.name_ingredient
FROM ingredient
INNER JOIN compose ON ingredient.id_ingredient = compose.id_ingredient
GROUP BY ingredient.name_ingredient
HAVING COUNT(compose.id_recipe) >= 3;