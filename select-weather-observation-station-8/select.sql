SELECT DISTINCT city 
FROM station 
WHERE city IN 
(SELECT DISTINCT city 
FROM station 
WHERE city LIKE '%a' OR 
city LIKE '%e' OR
city LIKE '%i' OR  
city LIKE '%o' OR 
city LIKE '%u')
AND
city IN 
(SELECT city 
FROM station 
WHERE city LIKE 'A%' OR 
city LIKE 'E%' OR 
city LIKE 'I%' OR 
city LIKE 'O%' OR 
city LIKE 'U%');