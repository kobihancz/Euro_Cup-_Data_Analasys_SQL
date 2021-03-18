SELECT  posi_to_play,
	COUNT(goal_id) AS goals,
    country_name
FROM (
	SELECT t1.country_name,
        t2.posi_to_play,
        t2.player_id
	FROM soccer_country_fx AS t1
    INNER JOIN player_mast_fx AS t2
    ON t1.country_id = t2.team_id) AS t1
INNER JOIN goal_details_fx AS t2
ON t1.player_id = t2.player_id
GROUP BY posi_to_play, country_name;
    