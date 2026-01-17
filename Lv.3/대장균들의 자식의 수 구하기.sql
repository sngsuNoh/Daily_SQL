-- 문제 제목: 대장균들의 자식의 수 구하기
-- 문제 난이도: Lv.3
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/299305
-- ---

SELECT
    D1.ID,
    COUNT(D2.ID) AS CHILD_COUNT
FROM
    ECOLI_DATA D1
    LEFT OUTER JOIN
    ECOLI_DATA D2
    ON D1.ID = D2.PARENT_ID
GROUP BY
    D1.ID;