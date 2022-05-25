SELECT 
CONCAT
(name, '(', SUBSTRING(Occupation, 1,1),')')
 FROM Occupations 
 ORDER BY name;

SELECT 
CONCAT
('There are a total of ', COUNT(occupation), ' ', LOWER(Occupation), 's.') 
FROM Occupations GROUP BY Occupation ORDER BY COUNT(Occupation), Occupation;
