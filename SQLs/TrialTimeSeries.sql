SELECT 
cd.campaign_date,
c.campaign_id,
c.total_spend,
c.country,
cd.start_date_offset,
cd.end_date_offset,
SUM(t.total_buy), 
--SUM(t.total_deposits),
--SUM(t.total_withdrawals),
--SUM(t.count_contracts),
--SUM(t.count_deposits),
--SUM(t.count_withdrawals)
SUM(t.total_sell)
FROM campaigns_id as c
inner join campaigns_country as cc on (cc.campaign_id = c.campaign_id)
inner join campaigns_day as cd on (cd.campaign_id = c.campaign_id)
left outer join (transactions as t
inner join clients as cl on t.account = cl.account)
on (t.transaction_date = cd.campaign_date AND cl.residence = cc.country)
WHERE ((cd.end_date_offset <= 10) AND (cd.start_date_offset >= -10) AND (c.country = 'id'))
group by cd.campaign_date, c.campaign_id
order by cd.campaign_date, c.campaign_id



