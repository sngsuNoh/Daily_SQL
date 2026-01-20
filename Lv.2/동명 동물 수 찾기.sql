-- 문제 제목: 동명 동물 수 찾기
-- 문제 난이도: Lv.2
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59041
-- ---

SELECT
    NAME,
    COUNT(*) AS COUNT
FROM
    ANIMAL_INS
WHERE
    NAME IS NOT NULL
GROUP BY 
    NAME
HAVING
    COUNT(*) >= 2
ORDER BY
    NAME ASC;