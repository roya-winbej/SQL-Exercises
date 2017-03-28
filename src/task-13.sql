/*
Find out the average speed of the PCs produced by maker A.
*/

SELECT AVG(pps.speed) FROM pc pps INNER JOIN product p ON p.model = pps.model WHERE p.maker = 'A';