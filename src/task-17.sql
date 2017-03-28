/*
Get the laptop models that have a speed smaller than the speed of any PC. 
Result set: type, model, speed.
*/


SELECT DISTINCT prd.type, lp.model, lp.speed FROM laptop lp INNER JOIN pc p ON lp.speed < ALL (SELECT speed FROM pc) INNER JOIN product prd ON prd.model = lp.model;