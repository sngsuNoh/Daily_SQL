-- 문제 제목: 서울에 위치한 식당 목록 출력하기
-- 문제 난이도: Lv.4
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131118
-- ---

SELECT
    INFO.REST_ID,
    INFO.REST_NAME,
    INFO.FOOD_TYPE,
    INFO.FAVORITES,
    INFO.ADDRESS,
    ROUND(AVG(REVIEW.REVIEW_SCORE), 2) AS SCORE
FROM
    REST_INFO INFO
    JOIN
    REST_REVIEW REVIEW
    ON
    INFO.REST_ID = REVIEW.REST_ID
WHERE
    ADDRESS LIKE '서울%'
GROUP BY
    INFO.REST_ID
ORDER BY
    AVG(REVIEW.REVIEW_SCORE) DESC,
    INFO.FAVORITES DESC;