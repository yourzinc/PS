-- [ PATIENT ] 
-- PT_NO 환자 번호
-- PT_NAME 환자 이름
-- GEND_CD 성별 코드
-- AGE 나이
-- TLNO 전화번호

--  12세 이하인 여자환자의 환자이름, 환자번호, 성별코드, 나이, 전화번호를 조회

-- ifnull() : NULL 인 값을 다른 값으로 출력

SELECT PT_NAME, PT_NO, GEND_CD, AGE, ifnull(TLNO, 'NONE') AS TLNO
FROM PATIENT
WHERE AGE <=12 AND GEND_CD = 'W'
ORDER BY AGE DESC, PT_NAME ASC