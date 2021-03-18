SELECT t1.player_name
FROM player_mast_fx AS t1
INNER JOIN player_in_out_fx AS t2
ON t1.player_id = t2.player_id
WHERE t2.play_half = 1 AND t2.play_schedule = 'NT';