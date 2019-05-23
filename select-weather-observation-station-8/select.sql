SELECT DISTINCT city
FROM station 
WHERE SUBSTRING(city, 1,1) IN ('A','E','I','O','U') 
AND
SUBSTRING(city, -1,1) IN ('A','E','I','O','U');