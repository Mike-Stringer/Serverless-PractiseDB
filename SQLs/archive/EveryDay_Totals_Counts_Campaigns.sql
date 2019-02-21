--Filter for residence
SELECT 
t.transaction_date,
cl.residence,
SUM(t.total_buy), 
SUM(t.total_sell),
cd.campaign_id,
rc.counts
FROM transactions as t
inner join clients as cl on (t.account = cl.account)
left join reg_counts as rc on (t.transaction_date =  rc.red_date AND rc.country=cl.residence)
left outer join campaign_dates as cd on ((t.transaction_date = cd.transaction_date) AND ((cd.country = cl.residence) OR (cd.country = '')))
--WHERE (cl.residence = 'id')
group by t.transaction_date,  cl.residence
order by t.transaction_date,  cl.residence