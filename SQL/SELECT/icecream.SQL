-- 상반기 아이스크림 총주문량이 3,000보다 높으면서
-- 아이스크림의 주 성분이 과일인 아이스크림의 맛을
-- 총주문량이 큰 순서대로 조회

SELECT a.FLAVOR
FROM FIRST_HALF a
JOIN ICECREAM_INFO b
ON a.FLAVOR = b.FLAVOR
WHERE a.TOTAL_ORDER > 3000 and b.INGREDIENT_TYPE = 'fruit_based'
ORDER BY a.TOTAL_ORDER DESC