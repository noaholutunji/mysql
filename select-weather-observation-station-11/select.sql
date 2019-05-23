SELECT DISTINCT city
FROM station 
WHERE SUBSTRING(city, 1,1) NOT IN ('A','E','I','O','U') 
OR
SUBSTRING(city, -1,1) NOT IN ('A','E','I','O','U');