SELECT DISTINCT match_no,
	COUNT(sent_off) OVER (PARTITION BY match_no) AS num_cards_per_match
FROM player_booked_fx
ORDER BY num_cards_per_match DESC
LIMIT 1;