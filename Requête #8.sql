
Afficher le prix total de la recette n°5


SELECT SUM(price*quantity) FROM ingredient 
INNER JOIN compose ON ingredient.id_ingredient = compose.id_ingredient
WHERE id_recipe = 16
