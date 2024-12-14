SELECT INGREDIENT.name_ingredient,INGREDIENT.price,compose.id_recipe FROM INGREDIENT
INNER JOIN compose ON INGREDIENT.id_ingredient=compose.id_ingredient
WHERE INGREDIENT.price<2