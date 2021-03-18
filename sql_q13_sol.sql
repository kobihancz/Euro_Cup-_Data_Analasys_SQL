SELECT player_name
FROM player_mast_fx
WHERE posi_to_play IN ('FD', 'DF') AND player_id IN (
SELECT player_id
FROM goal_details_fx);
