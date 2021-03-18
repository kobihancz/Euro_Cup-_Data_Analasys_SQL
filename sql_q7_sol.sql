SELECT t1.venue_name
FROM soccer_venue_fx AS t1
INNER JOIN match_mast_fx AS t2
ON t1.venue_id =t2.venue_id
WHERE t2.decided_by = 'P';