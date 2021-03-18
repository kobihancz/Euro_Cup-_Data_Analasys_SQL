SELECT COUNT(t1.team_id) AS num_GK_capt
FROM match_captain_fx AS t1
INNER JOIN player_mast_fx AS t2 
ON t1.player_captain = t2.player_id
WHERE t2.posi_to_play = 'GK';