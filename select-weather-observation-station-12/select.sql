SELECT DISTINCT city
FROM station 
WHERE SUBSTRING(city, 1,1) NOT IN ('A','E','I','O','U') 
AND
SUBSTRING(city, -1,1) NOT IN ('A','E','I','O','U');