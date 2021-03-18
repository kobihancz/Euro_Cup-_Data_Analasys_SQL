SELECT t2.play_stage, COUNT(t1.in_out) AS substitutions
FROM player_in_out_fx AS t1
LEFT JOIN match_details_fx AS t2
ON t1.match_no = t2.match_no
GROUP BY t2.play_stage;
