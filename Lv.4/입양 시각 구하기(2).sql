-- 문제 제목: 입양 시각 구하기(2)
-- 문제 난이도: Lv.4
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59413
-- ---

SET @HOUR = -1;

SELECT
    (@HOUR := @HOUR + 1) AS HOUR,
    (
        SELECT
            COUNT(*)
        FROM 
            ANIMAL_OUTS
        WHERE
            HOUR(DATETIME) = @HOUR
    ) AS COUNT
FROM 
    ANIMAL_OUTS
WHERE
    @HOUR < 23;