/*
Find the makers producing PCs but not laptops.
*/

SELECT maker FROM product WHERE type IN ('PC') 
EXCEPT 
SELECT maker FROM product WHERE type IN ('Laptop')
