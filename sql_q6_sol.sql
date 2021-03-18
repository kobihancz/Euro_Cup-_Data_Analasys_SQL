SELECT COUNT(t2.match_no) AS one_pt_diff_no_P_shooutout
FROM soccer_team_fx AS t1
INNER JOIN match_details_fx as t2
ON t1.team_id = t2.team_id
WHERE goal_diff = 1 and decided_by != 'P';
