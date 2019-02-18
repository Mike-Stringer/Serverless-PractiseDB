SELECT 
t.transaction_date,
cl.residence,
SUM(t.total_buy), 
SUM(t.total_sell)
FROM transactions as t
inner join clients as cl on (t.account = cl.account)
--WHERE (cl.residence = 'id')
group by t.transaction_date
order by t.transaction_date