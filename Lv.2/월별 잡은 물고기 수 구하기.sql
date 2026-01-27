-- 문제 제목: 월별 잡은 물고기 수 구하기
-- 문제 난이도: Lv.2
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/293260
-- ---

SELECT
    COUNT(*) AS FISH_COUNT,
    MONTH(TIME) AS MONTH
FROM
    FISH_INFO
GROUP BY
    MONTH(TIME)
ORDER BY
    MONTH ASC;