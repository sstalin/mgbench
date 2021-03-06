-- Q2.6: What are the average and maximum data transfer rates (Gbps)?

SELECT AVG(bandwidth) / 125000000.0 AS transfer_avg,
       MAX(bandwidth) / 125000000.0 AS transfer_max
FROM (
  SELECT __time,
         SUM(object_size) AS transfer
  FROM logs
  GROUP BY __time
) AS r;
