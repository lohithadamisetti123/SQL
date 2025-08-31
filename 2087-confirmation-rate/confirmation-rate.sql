SELECT s.user_id, 
       IFNULL(ROUND(SUM(p.action = 'confirmed') / COUNT(p.user_id), 2), 0.00) AS confirmation_rate
FROM signups s
LEFT JOIN confirmations p ON s.user_id = p.user_id
GROUP BY s.user_id;
