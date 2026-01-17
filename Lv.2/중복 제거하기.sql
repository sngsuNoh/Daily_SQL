-- 문제 제목: 중복 제거하기
-- 문제 난이도: Lv.2
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59408
-- ---

SELECT
    COUNT(DISTINCT NAME)
FROM
    ANIMAL_INS
WHERE
    NAME IS NOT NULL;

-- 다른 풀이
-- SELECT 
--     COUNT(*)
-- FROM (
--     SELECT 
--         NAME
--     FROM 
--         ANIMAL_INS
--     WHERE 
--         NAME IS NOT NULL
--     GROUP BY 
--         NAME
-- ) SUB;