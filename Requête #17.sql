 Trouver les recettes qui ne nécessitent aucun ingrédient (par exemple la recette de la tasse d’eau
chaude qui consiste à verser de l’eau chaude dans une tasse)

SELECT * 
FROM RECIPE
LEFT JOIN COMPOSE 
ON RECIPE.id_recipe = COMPOSE.id_recipe
WHERE compose.id_ingredient IS NULL
