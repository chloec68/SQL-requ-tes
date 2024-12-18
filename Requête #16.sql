Afficher la / les recette(s) les plus rapides à préparer

SELECT RECIPE.recipe_name, RECIPE.prepTime
FROM RECIPE
WHERE RECIPE.prepTime = (SELECT MIN(RECIPE.prepTime) FROM RECIPE);