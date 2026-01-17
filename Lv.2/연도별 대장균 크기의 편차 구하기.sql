-- 문제 제목: 연도별 대장균 크기의 편차 구하기
-- 문제 난이도: Lv.2
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/299310
-- ---

SELECT
    YEAR(DIFFERENTIATION_DATE) AS YEAR,
    (
        SELECT
            MAX(SIZE_OF_COLONY)
        FROM
            ECOLI_DATA
        WHERE
            YEAR(DIFFERENTIATION_DATE) = YEAR
    ) - SIZE_OF_COLONY AS YEAR_DEV,
    ID
FROM
    ECOLI_DATA
ORDER BY 
    YEAR ASC,
    YEAR_DEV ASC;