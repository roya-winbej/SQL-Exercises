/*
    Find the model number, speed and hard drive capacity of PCs cheaper than $600 having a 12x or a 24x CD drive.
*/

SELECT 
    model, speed, hd 
FROM 
    pc 
WHERE 
    cd 
IN 
    ('12x', '24x') 
AND 
    price < 600;
