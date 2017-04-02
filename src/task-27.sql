/*
Find out the average hard disk drive capacity of PCs produced by makers who also manufacture printers.
Result set: maker, average HDD capacity.
*/

SELECT pr.maker, AVG(p_c.hd) AS Avg_hd FROM pc p_c INNER JOIN product pr ON p_c.model = pr.model 
WHERE maker IN (SELECT maker FROM product WHERE type='printer') GROUP BY pr.maker
