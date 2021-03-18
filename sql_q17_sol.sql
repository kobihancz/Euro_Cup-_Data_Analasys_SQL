SELECT DISTINCT COUNT(t1.ass_ref_name) OVER (PARTITION BY t1.country_id) AS ass_ref_per_country,
    t2.country_name
FROM asst_referee_mast_fx AS t1
INNER JOIN soccer_country_fx AS t2
ON t1.country_id = t2.country_id
ORDER BY ass_ref_per_country DESC
LIMIT 1;
