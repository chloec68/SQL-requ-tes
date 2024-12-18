
Bonus : Trouver la recette la plus coûteuse de la base de données (il peut y avoir des ex aequo, il est
donc exclu d’utiliser la clause LIMIT)

	SELECT recipe.recipe_name, ROUND(SUM(compose.quantity * ingredient.price),2) AS prixTotal
	FROM recipe 
	INNER JOIN compose 
	ON recipe.id_recipe = compose.id_recipe
	INNER JOIN ingredient 
	ON compose.id_ingredient = ingredient.id_ingredient
	GROUP BY recipe.recipe_name
	HAVING prixTotal >= ALL (
	SELECT ROUND(SUM(compose.quantity * ingredient.price),2) AS prixTotal
	FROM recipe 
	INNER JOIN compose 
	ON recipe.id_recipe = compose.id_recipe
	INNER JOIN ingredient 
	ON compose.id_ingredient = ingredient.id_ingredient
		GROUP BY recipe.id_recipe
	)