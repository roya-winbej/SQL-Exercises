/*
Find the makers of the cheapest color printers.
Result set: maker, price.
*/

SELECT DISTINCT p.maker, pr.price FROM printer pr INNER JOIN product p ON pr.model = p.model WHERE pr.color = 'y' AND pr.price = (SELECT MIN(price) FROM printer WHERE color = 'y')
