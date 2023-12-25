SELECT user_id,
  CASE
    WHEN register_device = 1 THEN '데스크톱'
    WHEN register_device = 2 THEN '스마트폰'
    WHEN register_device = 3 THEN '애플리케이션'
  END AS device_name
FROM mst_users;  
