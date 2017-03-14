USE rockStarDay2;

/*
-- Practice
SELECT * FROM individual;
SELECT * FROM individual WHERE deceasedDate IS NULL;
SELECT DISTINCT genre FROM band;
SELECT * FROM band WHERE genre = 'Country' ORDER BY yearFormed DESC;

-- EX. 1
SHOW Columns from band;
SELECT ID, name, genre from band;

-- EX. 2...

-- EX. 3
SELECT * FROM individual WHERE LastName = 'Jennings';
SELECT ID, lastName FROM individual WHERE deceasedDate IS NOT NULL;
SELECT ID, lastName, BirthDate FROM individual WHERE year(birthDate) > 1940;
SELECT * FROM individual WHERE ID IN (1,3,5,7,19);


-- EX. 4
SELECT * FROM band WHERE genre = 'Alternative' AND isTogether = 0;
SELECT id, name FROM band WHERE id = 4;
*/

-- EX. 5
SELECT * FROM band WHERE name LIKE 'The%';
SELECT * FROM band WHERE name LIKE '%Stones';
SELECT * FROM individual WHERE firstName LIKE '__ck';

SELECT * FROM band WHERE name LIKE '% and %';
SELECT * FROM individual WHERE firstName LIKE '_im';
SELECT * FROM band WHERE name LIKE '%s';


