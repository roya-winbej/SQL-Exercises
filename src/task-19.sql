/*
For each maker having models in the Laptop table, find out the average screen size of the laptops he produces. 
Result set: maker, average screen size.
*/

SELECT p.maker, AVG(lp.screen) AS average_screen_size FROM laptop lp INNER JOIN product p ON p.model = lp.model GROUP BY p.maker;