-- 문제 제목: 업그레이드 된 아이템 구하기
-- 문제 난이도: Lv.2
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/273711
-- ---


-- JOIN으로 풀이 
-- SELECT
--     SUB.ITEM_ID,
--     SUB.ITEM_NAME,
--     SUB.RARITY
-- FROM
--     ITEM_INFO I 
--     JOIN
--     (
--         SELECT
--             T.ITEM_ID,
--             T.PARENT_ITEM_ID,
--             INFO.ITEM_NAME,
--             INFO.RARITY
--         FROM 
--             ITEM_TREE T 
--             JOIN
--             ITEM_INFO INFO  
--             ON T.ITEM_ID = INFO.ITEM_ID 
--     ) SUB
--     ON I.ITEM_ID = SUB.PARENT_ITEM_ID
-- WHERE
--     I.RARITY = 'RARE'
-- ORDER BY
--     SUB.ITEM_ID DESC;

-- 개선된 풀이
SELECT
    T.ITEM_ID,
    I.ITEM_NAME,
    I.RARITY 
FROM
    ITEM_INFO I 
    JOIN 
    ITEM_TREE T 
    ON I.ITEM_ID = T.ITEM_ID 
WHERE 
    T.PARENT_ITEM_ID 
    IN 
    (
        SELECT 
            ITEM_ID 
        FROM
            ITEM_INFO
        WHERE
            RARITY = 'RARE'
    )
ORDER BY T.ITEM_ID DESC;