# 코드 값(1,2,3)을 레이블로 변경하여 코드 값의 의미를 파악할 수 있도록 하기 위해 CASE 문이 사용되었다 

SELECT user_id,
  CASE
    WHEN register_device = 1 THEN '데스크톱'
    WHEN register_device = 2 THEN '스마트폰'
    WHEN register_device = 3 THEN '애플리케이션'
  END AS device_name
FROM mst_users; 

