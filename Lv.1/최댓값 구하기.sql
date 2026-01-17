-- 문제 제목: 최댓값 구하기
-- 문제 난이도: Lv.1
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59415
-- ---

SELECT
    DATETIME
FROM
    ANIMAL_INS
ORDER BY 
    DATETIME DESC
LIMIT
    1;