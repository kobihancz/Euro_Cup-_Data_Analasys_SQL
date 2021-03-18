SELECT t1.match_no,
 t2.country_name,
 SUM(t1.penalty_score) OVER (PARTITION BY t1.match_no) AS P_shot
FROM match_details_fx AS t1
INNER JOIN soccer_country_fx AS t2
ON t1.team_id = t2.country_id
ORDER BY P_shot DESC
LIMIT 2;




