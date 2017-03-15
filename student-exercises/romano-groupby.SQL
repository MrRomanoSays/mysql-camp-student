/*
-- Query 1:
-- Retrieve all the columns from the vteamRoster view for only the batting leaders. To accomplish this, create a query that joins the batting table to the vteamRoster view using the playerID column for the join.
SELECT * 
FROM vteamRoster
	INNER JOIN batting ON vteamRoster.playerID = batting.playerID
ORDER BY batting.battingAvg DESC;

-- Query 2:
-- Make a copy of the first query and place it below the first query. Modify the new query to determine the average weight of the batting leaders by division.
SELECT ROUND(AVG(weight)) AS 'AVG Weight of Batting Leaders'
FROM vteamRoster
	INNER JOIN batting ON vteamRoster.playerID = batting.playerID
ORDER BY batting.battingAvg DESC;

-- Query 3: 
-- Create a query that returns all rows from just the vteamRoster view.
SELECT * from vteamRoster;

-- Query 4: 
Create a query that counts the number of players within the vteamRoster view by position.
SELECT position AS Position, COUNT(playerID) AS 'Total Players'
FROM vteamRoster
GROUP BY position;


-- HAVING CLAUSE EXERCISES
-- list all the players from the vteamRoster view who bat left handed
SELECT * 
FROM vteamRoster
WHERE bats = 'L';
-- Now, determine which team has the most lefties using COUNT and GroupBy
SELECT teamName AS 'Team Name', COUNT(playerID) AS 'Total Players'
FROM vteamRoster
WHERE bats = 'L'
GROUP BY teamName;

SELECT teamName AS 'Team Name', COUNT(playerID) AS 'Total Players'
FROM vteamRoster
WHERE bats = 'L'
GROUP BY teamName
HAVING COUNT(playerID) > 2;
HAVING COUNT('Total Players') > 2;
-- Remember, that I had to include COUNT function after having. Alias renamed the playerID not the COUNT(playerID) function.
*/

