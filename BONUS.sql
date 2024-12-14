BONUS 

// FAUX

SELECT compose.id_recipe
FROM compose
INNER JOIN INGREDIENT ON compose.id_ingredient = INGREDIENT.id_ingredient
WHERE MAX(SUM(INGREDIENT.price * (compose.quantity/10)))