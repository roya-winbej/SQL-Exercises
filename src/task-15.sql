/*
Get hard drive capacities that are identical for two or more PCs. 
Result set: hd.
*/

SELECT MAX(hd) AS hd FROM pc GROUP BY hd HAVING COUNT(hd) >= 2
