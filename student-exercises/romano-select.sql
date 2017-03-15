/* ROCKSTAR DATABASE

USE rockStarDay2;

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


-- EX. 5
-- EXAMPLES FOR PRACTICE
SELECT * FROM band WHERE name LIKE 'The%';
SELECT * FROM band WHERE name LIKE '%Stones';
SELECT * FROM individual WHERE firstName LIKE '__ck';

SELECT * FROM band WHERE name LIKE '% and %';
SELECT * FROM individual WHERE firstName LIKE '_im';
SELECT * FROM band WHERE name LIKE '%s';
*/

/* BASEBALL DATABASE
SELECT team.ID
, team.TeamName
, batting.TeamID
, batting.Rank
, batting.BattingAvg

FROM team
	INNER JOIN batting ON batting.teamID = team.ID;


-- Create a SELECT statement that joins the batting table to the player table. Which player has a batting average of 331?

SELECT 
player.lastName
, player.firstName
, batting.battingAvg

FROM player
	INNER JOIN batting ON batting.playerID = player.ID

WHERE batting.battingAvg = 331;


-- Create a SELECT statement that joins the player table to the roster table.
SELECT *
FROM player
	INNER JOIN roster ON roster.playerID = player.ID
    INNER JOIN team ON roster.teamID = team.ID

	WHERE team.teamName = 'Boston Red Sox';

--Views
SELECT * FROM vteamRoster;
DESCRIBE vteamRoster;
SHOW CREATE VIEW vteamRoster;

--EX 2
-- Create a SELECT statement that joins the player table and the batting table. The query should show all the players and any matching players that exist within the batting table. You should see NULL when there are no matches in the batting table.

SELECT * 
FROM player 
	LEFT JOIN batting ON batting.playerID = player.ID


-- Create a SELECT statement that joins the roster table and the team table. The query should display all the teams and any matching players within the roster table. You should see NULL when there are no matches in the roster table.
SELECT * 
FROM roster
	RIGHT JOIN team ON team.ID = roster.teamID;


-- Create a query that shows teams that have players on a roster. If a team does not have any players on a roster, then do not display the team.
SELECT * 
FROM roster
	RIGHT JOIN team ON team.ID = roster.teamID
		WHERE roster.ID IS NOT NULL;

-- Create a query that displays teams that do not have players on a roster.
SELECT team.* 
FROM roster
	RIGHT JOIN team ON team.ID = roster.teamID
    WHERE roster.ID IS NULL;


-- ORDER BY 
-- Create a SELECT statement that joins the team table to the batting table using the team's ID column. Be sure to include the batting.BattingAvg, batting.ID, team.TeamName columns. The results should look something like this:

SELECT batting.battingAvg
, batting.ID
, team.teamName
FROM team
	INNER JOIN batting ON batting.teamID = team.ID
    ORDER BY batting.battingAvg DESC;
    
    
-- SELECT * FROM baseball.vbattingleaders;
-- Which players have the most hits? Display the player's first name, last name, team abbreviation, and hits. The players with the most hits should be sorted at the top of the list.
SELECT firstName
, lastName
, abbr
, hits
FROM baseball.vbattingleaders
		ORDER BY hits DESC;


-- Which players have the least hits? Display the player's first name, last name, team abbreviation, and hits. The players with the least hits should be sorted at the top of the list.
SELECT firstName
, lastName
, abbr
, hits
FROM baseball.vbattingleaders
		ORDER BY hits;    


 -- Sort the players by team. Within each team, sort the hitters with the most AtBats.   
 SELECT *
 FROM baseball.vbattingleaders
 ORDER BY teamName, atBats DESC;
 */