-- 문제 제목: 특정 세대의 대장균 찾기
-- 문제 난이도: Lv.4
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/301650
-- ---

SELECT
    E1.ID
FROM
    ECOLI_DATA E1
    JOIN ECOLI_DATA E2 ON E1.PARENT_ID = E2.ID
    JOIN ECOLI_DATA E3 ON E2.PARENT_ID = E3.ID
WHERE
    E3.PARENT_ID IS NULL
ORDER BY
    E1.ID ASC;