-- ============================================
-- DQ RULE RESULTS (RULE LEVEL)
-- ============================================

CREATE OR REPLACE VIEW dq_rule_results AS

-- Completeness
SELECT 'email_not_null' AS rule_name, 'Completeness' AS dimension,
       ROUND(COUNT(email) * 100.0 / COUNT(*), 2) AS rule_score
FROM customer_master

UNION ALL

SELECT 'phone_not_null', 'Completeness',
       ROUND(COUNT(phone) * 100.0 / COUNT(*), 2)
FROM customer_master

UNION ALL

-- Validity
SELECT 'email_format_valid', 'Validity',
       ROUND(SUM(CASE 
           WHEN email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'
           THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)
FROM customer_master

UNION ALL

SELECT 'gender_domain_valid', 'Validity',
       ROUND(SUM(CASE WHEN gender IN ('M','F','O') THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)
FROM customer_master

UNION ALL

-- Uniqueness
SELECT 'customer_id_unique', 'Uniqueness',
       ROUND(COUNT(DISTINCT customer_id) * 100.0 / COUNT(*), 2)
FROM customer_master

UNION ALL

-- Timeliness
SELECT 'updated_within_24hrs', 'Timeliness',
       ROUND(SUM(CASE 
           WHEN last_updated_ts >= CURRENT_TIMESTAMP - INTERVAL '1 day'
           THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)
FROM customer_master;
