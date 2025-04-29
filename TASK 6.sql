use sales;
select EXTRACT(MONTH FROM date) AS order_month from onlinesales;
select * from onlinesales;
select sum(`Total Revenue`) AS total_revenue, count(transaction_id) AS total_orders
from onlinesales
group by EXTRACT(year from date);

SELECT
    EXTRACT(YEAR FROM date) AS order_year,
    EXTRACT(MONTH FROM date) AS order_month,
    SUM('Total Revenue') AS total_revenue1,
    COUNT(DISTINCT `Transaction ID`) AS total_orders
FROM
    onlinesales
WHERE
    date BETWEEN '2024-01-01' AND '2024-12-31' 
GROUP BY
    EXTRACT(YEAR FROM date),
    EXTRACT(MONTH FROM date)
ORDER BY
    order_year,
    order_month;
