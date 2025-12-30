-- ============================================
-- DQ DIMENSION LEVEL SCORES
-- ============================================

CREATE OR REPLACE VIEW dq_dimension_scores AS
SELECT
    dimension,
    ROUND(AVG(rule_score), 2) AS dimension_score
FROM dq_rule_results
GROUP BY dimension;
