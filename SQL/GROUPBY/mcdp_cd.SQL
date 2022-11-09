-- 2022년 5월에 예약한 환자 수를 진료과코드 별로 조회
-- '진료과 코드', '5월예약건수'로 지정
-- 진료과별 예약한 환자 수, 진료과 코드 오름차순

SELECT MCDP_CD AS '진료과코드', COUNT(*) AS '5월예약건수'
FROM APPOINTMENT
WHERE (YEAR(APNT_YMD)=2022 and 
       MONTH(APNT_YMD)=5)
GROUP BY MCDP_CD
ORDER BY COUNT(*), MCDP_CD