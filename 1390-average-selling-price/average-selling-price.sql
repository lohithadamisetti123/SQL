# Write your MySQL query statement below
select p.product_id,case WHEN sum(u.units) = 0 OR SUM(u.units) IS NULL 
        THEN 0 
        ELSE ROUND(SUM(p.price * u.units) / SUM(u.units), 2) 
    END AS average_price
from prices p left join unitssold u on p.product_id=u.product_id 
AND u.purchase_date BETWEEN p.start_date AND p.end_date group by p.product_id;