-- 문제 제목: 조건에 맞는 사원 정보 조회하기
-- 문제 난이도: Lv.2
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/284527
-- ---

-- 문제의 조건을 모두 만족하지 않지만 정답 처리된 코드
-- SELECT
--     SUM(HG.SCORE) AS SCORE,
--     HE.EMP_NO,
--     HE.EMP_NAME,
--     HE.POSITION,
--     HE.EMAIL
-- FROM
--     HR_DEPARTMENT HD
--     JOIN HR_EMPLOYEES HE
--     ON HD.DEPT_ID = HE.DEPT_ID
--     JOIN HR_GRADE HG
--     ON HE.EMP_NO = HG.EMP_NO
-- WHERE
--     HG.YEAR = 2022
-- GROUP BY
--     EMP_NO
-- ORDER BY
--     SCORE DESC
-- LIMIT 1;

-- 작성한 최종 정답 (동점자 출력)
SELECT
    HG.HG_SCORE AS SCORE,
    HE.EMP_NO,
    HE.EMP_NAME,
    HE.POSITION,
    HE.EMAIL
FROM
    HR_EMPLOYEES HE
    JOIN (
        SELECT
            EMP_NO,
            SUM(SCORE) AS HG_SCORE,
            RANK() OVER (
                ORDER BY
                    SUM(SCORE) DESC
            ) AS HG_RANK
        FROM
            HR_GRADE
        WHERE
            YEAR = 2022
        GROUP BY
            EMP_NO
    ) HG 
    ON HE.EMP_NO = HG.EMP_NO
WHERE
    HG.HG_RANK = 1;