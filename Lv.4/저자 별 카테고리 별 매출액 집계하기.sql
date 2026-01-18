-- 문제 제목: 저자 별 카테고리 별 매출액 집계하기
-- 문제 난이도: Lv.4
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144856
-- ---

SELECT
    B.AUTHOR_ID,
    A.AUTHOR_NAME,
    B.CATEGORY,
    SUM(B.PRICE * BS.SALES) AS TOTAL_SALES
FROM
    BOOK B
    JOIN AUTHOR A
    ON B.AUTHOR_ID = A.AUTHOR_ID
    JOIN BOOK_SALES BS
    ON B.BOOK_ID = BS.BOOK_ID
WHERE
    BS.SALES_DATE LIKE '2022-01%'
GROUP BY
    B.AUTHOR_ID,
    B.CATEGORY
ORDER BY
    B.AUTHOR_ID ASC,
    B.CATEGORY DESC;