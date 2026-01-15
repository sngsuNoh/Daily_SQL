-- 문제 제목: 조건에 맞는 회원수 구하기
-- 문제 난이도: Lv.1
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131535
-- ---

SELECT
    COUNT(*) AS USERS
FROM 
    USER_INFO
WHERE
    YEAR(JOINED) = 2021
    AND
    20 <= AGE AND AGE <= 29;