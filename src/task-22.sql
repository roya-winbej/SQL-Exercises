/*
For each value of PC speed that exceeds 600 MHz, find out the average price of PCs with identical speeds.
Result set: speed, average price.
*/

SELECT pc1.speed, AVG(pc1.price) AS Avg_price FROM pc pc1 INNER JOIN pc pc2 ON pc1.speed = pc2.speed AND pc1.speed > 600 GROUP BY pc1.speed
