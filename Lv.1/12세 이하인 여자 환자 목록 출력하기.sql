-- 문제 제목: 12세 이하인 여자 환자 목록 출력하기
-- 문제 난이도: Lv.1
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132201
-- ---

SELECT 
    PT_NAME,
    PT_NO,
    GEND_CD, 
    AGE, 
    CASE
        WHEN TLNO IS NULL THEN 'NONE'
        ELSE TLNO
    END AS TLNO
FROM 
    PATIENT
WHERE 
    AGE <= 12 
    AND GEND_CD = 'W'
ORDER BY 
    AGE DESC, 
    PT_NAME ASC;