/*
List the models of any type having the highest price of all products present in the database.
*/

WITH CTE AS ( 
 SELECT p.model, p.price FROM pc p
 UNION
 SELECT l.model, l.price FROM laptop l
 UNION
 SELECT pr.model, pr.price FROM printer pr
)

SELECT model FROM CTE WHERE price = (SELECT MAX(price) AS price FROM CTE)
