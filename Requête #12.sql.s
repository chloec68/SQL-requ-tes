
REQUETE #12

SELECT COUNT(id_recipe), GROUP_CONCAT(recipe_name) AS recipe_names, id_category 
FROM RECIPE 
GROUP BY id_category;