-- VALIDITY CHECKS

SELECT
    'email_format_valid' AS rule_name,
    'Validity' AS dimension,
    COUNT(*) AS total_records,
    SUM(CASE 
        WHEN email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'
        THEN 1 ELSE 0 END) AS passed_records,
    ROUND(SUM(CASE 
        WHEN email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'
        THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS rule_score
FROM customer_master;

SELECT
    'gender_domain_valid' AS rule_name,
    'Validity' AS dimension,
    COUNT(*) AS total_records,
    SUM(CASE WHEN gender IN ('M','F','O') THEN 1 ELSE 0 END) AS passed_records,
    ROUND(SUM(CASE WHEN gender IN ('M','F','O') THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS rule_score
FROM customer_master;
