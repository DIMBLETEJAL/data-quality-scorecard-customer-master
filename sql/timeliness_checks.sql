-- TIMELINESS CHECKS

SELECT
    'updated_within_24hrs' AS rule_name,
    'Timeliness' AS dimension,
    COUNT(*) AS total_records,
    SUM(CASE 
        WHEN last_updated_ts >= CURRENT_TIMESTAMP - INTERVAL '1 day'
        THEN 1 ELSE 0 END) AS passed_records,
    ROUND(SUM(CASE 
        WHEN last_updated_ts >= CURRENT_TIMESTAMP - INTERVAL '1 day'
        THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS rule_score
FROM customer_master;
