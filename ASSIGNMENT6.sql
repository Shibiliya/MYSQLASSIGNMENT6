USE entri_d42;
SELECT *FROM Persons;
SELECT *FROM Country;

ALTER TABLE Persons ADD COLUMN Country_name VARCHAR(100);

UPDATE Persons SET Country_name='USA' WHERE Id=1;
UPDATE Persons SET Country_name='UK' WHERE Id=2;
UPDATE Persons SET Country_name='Canada' WHERE Id=3;
UPDATE Persons SET Country_name='India' WHERE Id=4;
UPDATE Persons SET Country_name='Australia' WHERE Id=5;
UPDATE Persons SET Country_name='Brazil' WHERE Id=6;
UPDATE Persons SET Country_name='Russia' WHERE Id=7;
UPDATE Persons SET Country_name='Germany' WHERE Id=8;
UPDATE Persons SET Country_name='France' WHERE Id=9;
UPDATE Persons SET Country_name='Japan' WHERE Id=10;

-- INNER JOIN
SELECT c.Id,c.Country_name,c.Population AS  Country_population ,p.Fname,p.Lname,p.Population AS Person_population,p.Rating
FROM Country c
INNER JOIN Persons p ON 
c.Id=p.Country_id;

-- LEFT JOIN
SELECT c.Id,c.Country_name,c.Population AS  Country_population ,p.Fname,p.Lname,p.Population AS Person_population,p.Rating
FROM Country c
LEFT JOIN Persons p ON 
c.Id=p.Country_id;

-- RIGHT JOIN
SELECT c.Id,c.Country_name,c.Population AS  Country_population ,p.Fname,p.Lname,p.Population AS Person_population,p.Rating
FROM Country c
RIGHT JOIN Persons p ON 
c.Id=p.Country_id;

-- DISTINCT COUNTRY_NAME
SELECT DISTINCT Country_name FROM Country
UNION 
SELECT DISTINCT Country_name FROM Persons;
-- DISTINCT COUNTRY_NAME INCLUDING DUPLICATES
SELECT Country_name FROM Country 
UNION ALL
SELECT Country_name FROM Persons ;
 
-- ROUNDED RATINGS OF ALL PERSONS 
SELECT Id,Fname,Lname,Country_name,ROUND(Rating) AS Rounded_rating  FROM Persons;






