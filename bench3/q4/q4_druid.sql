SELECT device_name,
       device_floor,
       COUNT(*) AS ct
FROM logs
WHERE event_type = 'door_open'
  AND __time >= TIMESTAMP '2019-06-01 00:00:00'
GROUP BY device_name,
         device_floor
ORDER BY ct DESC;