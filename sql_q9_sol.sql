SELECT distinct t1.player_name,
	t1.jersey_no
FROM player_mast_fx AS t1
LEFT JOIN match_details_fx AS t2
ON t1.player_id = t2.player_gk
WHERE t1.team_id = 1208 AND t1.posi_to_play = 'GK' AND t2.play_stage = 'G';









