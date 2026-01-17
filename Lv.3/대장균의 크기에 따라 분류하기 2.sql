-- 문제 제목: 대장균의 크기에 따라 분류하기 2
-- 문제 난이도: Lv.3
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/301649
-- ---

SELECT
    ECOLI.ID,
    CASE 
        WHEN ECOLI.PER <= 0.25 THEN 'CRITICAL'
        WHEN ECOLI.PER <= 0.50 THEN 'HIGH'
        WHEN ECOLI.PER <= 0.75 THEN 'MEDIUM'
        ELSE 'LOW'
    END AS COLONY_NAME
FROM (
    SELECT
        ID, 
        PERCENT_RANK() OVER (ORDER BY SIZE_OF_COLONY DESC) AS PER 
    FROM
        ECOLI_DATA
) AS ECOLI
ORDER BY
    ECOLI.ID;