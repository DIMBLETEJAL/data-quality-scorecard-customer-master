-- ============================================
-- FINAL WEIGHTED DATA QUALITY SCORE
-- ============================================

WITH weighted_scores AS (
    SELECT 'Completeness' AS dimension, 0.30 AS weight, dimension_score
    FROM dq_dimension_scores WHERE dimension = 'Completeness'

    UNION ALL
    SELECT 'Validity', 0.15, dimension_score
    FROM dq_dimension_scores WHERE dimension = 'Validity'

    UNION ALL
    SELECT 'Uniqueness', 0.15, dimension_score
    FROM dq_dimension_scores WHERE dimension = 'Uniqueness'

    UNION ALL
    SELECT 'Timeliness', 0.15, dimension_score
    FROM dq_dimension_scores WHERE dimension = 'Timeliness'
)

SELECT
    ROUND(SUM(dimension_score * weight), 2) AS final_data_quality_score
FROM weighted_scores;
