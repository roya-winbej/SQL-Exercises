/*
    For each maker producing laptops with a hard drive capacity of 10 Gb or higher, find the speed of such laptops. Result set: maker, speed.
*/

SELECT DISTINCT 
    maker, speed 
FROM 
    laptop 
LEFT JOIN 
    product 
ON 
    laptop.model = product.model 
WHERE
    hd >= '10' 
AND 
    type = 'laptop';
