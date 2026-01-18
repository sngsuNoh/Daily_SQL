-- 문제 제목: 진료과별 총 예약 횟수 출력하기
-- 문제 난이도: Lv.2
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132202
-- ---

SELECT
    MCDP_CD AS 진료과코드,
    COUNT(APNT_NO) AS 5월예약건수
FROM
    APPOINTMENT
WHERE
    APNT_YMD LIKE '2022-05%'
GROUP BY
    MCDP_CD
ORDER BY
    5월예약건수 ASC,
    진료과코드 ASC;