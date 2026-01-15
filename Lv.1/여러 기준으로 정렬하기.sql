-- 문제 제목: 여러 기준으로 정렬하기
-- 문제 난이도: Lv.1
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59404
-- ---

SELECT 
    ANIMAL_ID, NAME, DATETIME
FROM
    ANIMAL_INS
ORDER BY 
    NAME ASC, DATETIME DESC;