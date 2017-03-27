/*
Find out the models and prices for all the products (of any type) produced by maker B.
*/

SELECT 
    p.model, pc.price 
FROM 
    Product p 
INNER JOIN 
    PC pc 
ON 
    pc.model = p.model
WHERE 
    p.maker = 'B'
UNION
SELECT 
    p.model, l.price
FROM 
    Product p 
INNER JOIN 
    Laptop l 
ON 
    l.model = p.model 
WHERE 
    p.maker = 'B'
UNION
SELECT 
    p.model, pr.price 
FROM 
    Product p 
INNER JOIN 
    Printer pr 
ON 
    pr.model = p.model 
WHERE 
    p.maker = 'B'