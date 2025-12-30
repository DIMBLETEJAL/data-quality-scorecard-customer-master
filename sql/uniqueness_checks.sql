-- UNIQUENESS CHECKS

SELECT
    'customer_id_unique' AS rule_name,
    'Uniqueness' AS dimension,
    COUNT(*) AS total_records,
    COUNT(DISTINCT customer_id) AS passed_records,
    ROUND(COUNT(DISTINCT customer_id) * 100.0 / COUNT(*), 2) AS rule_score
FROM customer_master;

SELECT
    'email_unique' AS rule_name,
    'Uniqueness' AS dimension,
    COUNT(email) AS total_records,
    COUNT(DISTINCT email) AS passed_records,
    ROUND(COUNT(DISTINCT email) * 100.0 / COUNT(email), 2) AS rule_score
FROM customer_master
WHERE email IS NOT NULL;
