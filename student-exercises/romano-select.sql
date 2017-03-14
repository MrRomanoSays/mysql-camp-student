USE rockStarDay2;

/*
SELECT * FROM individual;

SELECT * FROM individual WHERE deceasedDate IS NULL;

SELECT DISTINCT genre FROM band;

SELECT * FROM band WHERE genre = 'Country' ORDER BY yearFormed DESC;

-------EXC. 1
SHOW Columns from band;

SELECT ID, name, genre from band;

-------EXC. 2
*/
SELECT * FROM individual WHERE LastName = 'Jennings';

SELECT ID, lastName FROM individual WHERE deceasedDate IS NOT NULL;

SELECT ID, lastName, BirthDate FROM individual WHERE year(birthDate) > 1940;

SELECT * FROM individual WHERE ID IN (1,3,5,7,19);
