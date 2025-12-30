-- COMPLETENESS CHECKS

SELECT
    'email_not_null' AS rule_name,
    'Completeness' AS dimension,
    COUNT(*) AS total_records,
    COUNT(email) AS passed_records,
    ROUND(COUNT(email) * 100.0 / COUNT(*), 2) AS rule_score
FROM customer_master;

SELECT
    'phone_not_null' AS rule_name,
    'Completeness' AS dimension,
    COUNT(*) AS total_records,
    COUNT(phone) AS passed_records,
    ROUND(COUNT(phone) * 100.0 / COUNT(*), 2) AS rule_score
FROM customer_master;
