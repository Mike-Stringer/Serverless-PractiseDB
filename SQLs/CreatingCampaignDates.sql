--creating campaign dates

SELECT 
t.transaction_date,
c.campaign_id,
cl.residence
FROM
transactions as t
inner join clients as cl on (cl.account = t.account)
left outer join campaigns_id as c on (c.country = cl.residence)
WHERE

((t.transaction_date >= c.start_date) AND (t.transaction_date <= c.end_date))

GROUP BY t.transaction_date, cl.residence
ORDER BY t.transaction_date, cl.residence