SELECT 
cd.campaign_date,
c.campaign_id,
cl.account,
c.total_spend,
c.country,
cd.start_date_offset,
cd.end_date_offset,
cl.date_joined,
ct.grand_total_buy,
ct.grand_total_sell,
--sum(t.total_buy) over(),
--sum(cl.first_deposit_amount) over(),
--count(cl.account),
cl.indication_coupon
FROM campaigns_id as c
--left outer join (transactions as t
inner join campaigns_country as cc on (cc.campaign_id = c.campaign_id)
inner join campaigns_day as cd on (cd.campaign_id = c.campaign_id)
inner join clients as cl on (cl.date_joined = cd.campaign_date AND cl.residence = cc.country)
inner join clients_total as ct on (cl.account = ct.account)
WHERE ((cd.end_date_offset <= 10) AND (cd.start_date_offset >= -10) AND (c.country = 'ru'))
group by cd.campaign_date, c.campaign_id,  cl.account
order by cd.campaign_date, c.campaign_id,  cl.account