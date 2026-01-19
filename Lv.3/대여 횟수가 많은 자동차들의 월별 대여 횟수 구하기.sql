-- 문제 제목: 대여 횟수가 많은 자동차들의 월별 대여 횟수 구하기
-- 문제 난이도: Lv.3
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151139
-- ---

SELECT
    MONTH(START_DATE) AS MONTH,
    CAR_ID, 
    COUNT(*) AS RECORDS
FROM
    CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE
    CAR_ID IN (
        SELECT 
            CAR_ID
        FROM
            CAR_RENTAL_COMPANY_RENTAL_HISTORY
        WHERE
            DATE_FORMAT(START_DATE, '%Y-%m') BETWEEN '2022-08' AND '2022-10'
        GROUP BY
            CAR_ID
        HAVING
            COUNT(*) >= 5
    )
    AND
    DATE_FORMAT(START_DATE, '%Y-%m') BETWEEN '2022-08' AND '2022-10'
GROUP BY 
    CAR_ID,
    MONTH(START_DATE)
HAVING
    COUNT(*) > 0
ORDER BY
    MONTH ASC,
    CAR_ID DESC;