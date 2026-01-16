-- 문제 제목: 특정 물고기를 잡은 총 수 구하기
-- 문제 난이도: Lv.2
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/298518
-- ---

SELECT
    COUNT(*) AS FISH_COUNT
FROM
    FISH_INFO I 
    JOIN
    FISH_NAME_INFO N 
    ON
    I.FISH_TYPE = N.FISH_TYPE
WHERE
    N.FISH_NAME
    IN 
    ('BASS', 'SNAPPER');