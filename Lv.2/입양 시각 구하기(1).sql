-- 문제 제목: 입양 시각 구하기(1)
-- 문제 난이도: Lv.2
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59412
-- ---

SELECT
    HOUR(DATETIME) AS HOUR,
    COUNT(*) AS COUNT
FROM
    ANIMAL_OUTS
WHERE
    HOUR(DATETIME) BETWEEN 9 AND 19
GROUP BY
    HOUR(DATETIME)
ORDER BY
    HOUR;