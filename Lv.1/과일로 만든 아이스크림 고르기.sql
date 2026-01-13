-- 문제 제목: 과일로 만든 아이스크림 고르기
-- 문제 난이도: Lv.1
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133025
-- ---

SELECT 
    F.FLAVOR
FROM
    FIRST_HALF F
    JOIN ICECREAM_INFO I
    ON F.FLAVOR = I.FLAVOR
WHERE 
    I.INGREDIENT_TYPE = 'fruit_based'
    AND F.TOTAL_ORDER > 3000
ORDER BY
    F.TOTAL_ORDER DESC;