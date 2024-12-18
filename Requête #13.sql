
Afficher les recettes qui contiennent l’ingrédient « Poulet »


SELECT INGREDIENT.name_ingredient,INGREDIENT.id_ingredient,compose.id_recipe FROM INGREDIENT 
INNER JOIN compose on INGREDIENT.id_ingredient = compose.id_ingredient
WHERE INGREDIENT.name_ingredient LIKE '%poulet%'