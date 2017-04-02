/*
Get the makers producing both PCs having a speed of 750 MHz or higher and laptops with a speed of 750 MHz or higher. 
Result set: maker
*/

SELECT pr.maker FROM product pr INNER JOIN pc p ON pr.model = p.model WHERE p.speed >= 750
INTERSECT
SELECT pr.maker FROM product pr INNER JOIN laptop l ON pr.model = l.model WHERE l.speed >= 750
