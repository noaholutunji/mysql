SELECT city, CHAR_LENGTH(city) FROM station 
 WHERE city = (SELECT Min(city) FROM station
 WHERE CHAR_LENGTH(city) = (SELECT Min(CHAR_LENGTH(city)) FROM station)) 

 or city = (SELECT Min(city) FROM station
 WHERE CHAR_LENGTH(city) = (SELECT Max(CHAR_LENGTH(city)) FROM station));
