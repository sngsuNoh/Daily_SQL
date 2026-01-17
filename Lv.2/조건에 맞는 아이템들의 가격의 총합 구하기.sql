-- 문제 제목: 조건에 맞는 아이템들의 가격의 총합 구하기
-- 문제 난이도: Lv.2
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/273709
-- ---

SELECT
    SUM(PRICE) AS TOTAL_PRICE
FROM
    ITEM_INFO
WHERE
    RARITY = 'LEGEND';