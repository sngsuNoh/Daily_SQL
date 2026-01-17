-- 문제 제목: 오프라인/온라인 판매 데이터 통합하기.sql
-- 문제 난이도: Lv.4
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131537
-- ---

    SELECT
        DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE,
        PRODUCT_ID,
        USER_ID,
        SALES_AMOUNT
    FROM 
        ONLINE_SALE 
    WHERE
        MONTH(SALES_DATE) = 3
UNION
    SELECT
        DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE,
        PRODUCT_ID,
        NULL AS USER_ID,
        SALES_AMOUNT
    FROM
        OFFLINE_SALE
    WHERE
        MONTH(SALES_DATE) = 3
ORDER BY
    SALES_DATE ASC,
    PRODUCT_ID ASC,
    USER_ID ASC;