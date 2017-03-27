/*
Find the makers of PCs with a processor speed of 450 MHz or more. Result set: maker.
*/

SELECT DISTINCT p.maker FROM product p INNER JOIN PC pck ON pck.model = p.model WHERE pck.speed >= 450;
