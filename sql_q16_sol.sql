-- return refree name for each refree id 
-- SELECT referee_name,
-- referee_id
-- FROM referee_mast_fx;

-- return, counted match number per venue id per ref id, refree id, venue name
-- SELECT DISTINCT t2.venue_name,
-- 	t1.referee_id,
-- 	COUNT(t1.match_no) OVER (PARTITION BY t1.venue_id, t1.referee_id) AS match_per_venue_per_ref
-- FROM match_mast_fx AS t1
-- INNER JOIN soccer_venue_fx AS t2
-- ON t1.venue_id = t2.venue_id;

SELECT t1.match_per_venue_per_ref,
	t1.venue_name,
    t2.referee_name
FROM
	(SELECT DISTINCT t2.venue_name,
		t1.referee_id,
		COUNT(t1.match_no) OVER (PARTITION BY t1.venue_id, t1.referee_id) AS match_per_venue_per_ref
	FROM match_mast_fx AS t1
	INNER JOIN soccer_venue_fx AS t2
	ON t1.venue_id = t2.venue_id) AS t1
INNER JOIN
	(SELECT referee_name,
		referee_id
	FROM referee_mast_fx) AS t2
ON t1.referee_id = t2.referee_id;
