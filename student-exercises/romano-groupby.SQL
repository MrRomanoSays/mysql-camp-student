/*
-- Query 1 and 2 Completed as a class

-- Query 3: Create a query that returns all rows from just the vteamRoster view.
SELECT * from vteamRoster;
*/

-- Query 4: Create a query that counts the number of players within the vteamRoster view by position.

SELECT position AS Position, COUNT(playerID) AS 'Total Players'
FROM vteamRoster
GROUP BY position;