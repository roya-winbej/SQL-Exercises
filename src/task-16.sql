/*
Get pairs of PC models with identical speeds and the same RAM capacity. Each resulting pair should be displayed only once, i.e. (i, j) but not (j, i). 
Result set: model with the bigger number, model with the smaller number, speed, and RAM.
*/

SELECT DISTINCT 
pc1.model AS model, 
pc2.model AS model,
pc2.speed AS speed,
pc2.ram AS ram FROM pc pc1 
INNER JOIN pc pc2 ON pc1.speed = pc2.speed AND pc1.ram = pc2.ram AND pc1.model > pc2.model;
