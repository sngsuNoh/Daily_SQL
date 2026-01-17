-- 문제 제목: 멸종위기의 대장균 찾기
-- 문제 난이도: Lv.5
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/301651
-- ---

WITH RECURSIVE GENERATION AS (
        SELECT
            ID, 
            PARENT_ID,
            1 AS GEN
        FROM
            ECOLI_DATA
        WHERE
            PARENT_ID IS NULL
    UNION ALL
        SELECT
            E.ID,
            E.PARENT_ID, 
            GEN + 1 AS GEN
        FROM
            ECOLI_DATA E 
            JOIN
            GENERATION G
            ON E.PARENT_ID = G.ID
)

SELECT
    COUNT(*) AS COUNT,
    GEN AS GENERATION 
FROM
    GENERATION 
WHERE
    ID NOT IN (
        SELECT 
            DISTINCT PARENT_ID 
        FROM
            GENERATION 
        WHERE
            PARENT_ID IS NOT NULL 
    )
GROUP BY
    GEN
ORDER BY
    GEN;