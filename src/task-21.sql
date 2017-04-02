/*
Find out the maximum PC price for each maker having models in the PC table. Result set: maker, maximum price.
*/

SELECT prd.maker, MAX(p.price) AS Max_price FROM pc p INNER JOIN product prd ON prd.model = p.model GROUP BY prd.maker
