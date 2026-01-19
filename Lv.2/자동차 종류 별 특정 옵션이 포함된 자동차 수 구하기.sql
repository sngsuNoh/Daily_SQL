-- 문제 제목: 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기
-- 문제 난이도: Lv.2
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151137
-- ---

-- 정규표현식 없는 풀이
-- SELECT
--     CAR_TYPE,
--     COUNT(*) AS CARS
-- FROM
--     CAR_RENTAL_COMPANY_CAR
-- WHERE
--     OPTIONS LIKE '%통풍시트%'
--     OR
--     OPTIONS LIKE '%열선시트%'
--     OR
--     OPTIONS LIKE '%가죽시트%'
-- GROUP BY
--     CAR_TYPE
-- ORDER BY
--     CAR_TYPE ASC;

-- 정규표현식 사용
SELECT
    CAR_TYPE,
    COUNT(*) AS CARS
FROM
    CAR_RENTAL_COMPANY_CAR
WHERE
    OPTIONS REGEXP '통풍시트|열선시트|가죽시트'
GROUP BY
    CAR_TYPE
ORDER BY
    CAR_TYPE ASC;