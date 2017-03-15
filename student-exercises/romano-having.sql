-- Does # of players equate to Trip's favorite team?
SELECT teamName, COUNT(playerID) AS 'Trips Fav Teams?'
FROM vteamRoster
GROUP BY teamName;

-- Batting Average Related to Position
SELECT vteamRoster.position as Position, 
ROUND(AVG(batting.battingAvg)) AS 'AVG',
COUNT(vteamRoster.position) AS 'Total Players', 
MIN(vteamRoster.Weight) as 'Min Weight', 
Max(vteamRoster.Weight) as 'Max Weight' 


FROM vteamRoster
INNER JOIN batting ON vteamRoster.playerID = batting.playerID
GROUP BY position
ORDER BY AVG DESC;            

		
