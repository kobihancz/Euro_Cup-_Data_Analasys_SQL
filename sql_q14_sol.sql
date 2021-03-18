-- return refree name for each mach 
-- SELECT t1.referee_name,
-- t2.match_no
-- FROM referee_mast_fx AS t1
-- INNER JOIN match_mast_fx as t2
-- ON t1.referee_id = t2.referee_id;

-- Count how many players where booked in each match
-- SELECT DISTINCT match_no,
-- COUNT(player_id) OVER (PARTITION BY match_no) AS num_booked
-- FROM player_booked_fx;

SELECT t1.num_booked,
	t2.referee_name
FROM
	(SELECT DISTINCT match_no,
		COUNT(player_id) OVER (PARTITION BY match_no) AS num_booked
	FROM player_booked_fx) AS t1
INNER JOIN
	(SELECT t1.referee_name,
		t2.match_no
	FROM referee_mast_fx AS t1
	INNER JOIN match_mast_fx as t2
	ON t1.referee_id = t2.referee_id) AS t2
ON t1.match_no = t2.match_no
ORDER BY t1.num_booked DESC;