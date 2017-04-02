/*
Find out the average price of PCs and laptops produced by maker A.
Result set: one overall average price for all items.

*/

WITH CTE AS (
    SELECT p_c.price FROM pc p_c INNER JOIN product pr ON pr.model = p_c.model WHERE pr.maker = 'A'
    UNION ALL
    SELECT l.price FROM laptop l INNER JOIN product pr ON pr.model = l.model WHERE pr.maker = 'A'
)

SELECT AVG(price) AS AVG_price FROM CTE
