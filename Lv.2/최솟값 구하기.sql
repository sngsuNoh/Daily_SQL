-- 문제 제목: 최솟값 구하기
-- 문제 난이도: Lv.2
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59038
-- ---

SELECT 
    DATETIME
FROM
    ANIMAL_INS
ORDER BY
    DATETIME ASC
LIMIT
    1;