SELECT
rg.country,
rg.transaction_date
FROM reg_counts_tunion as rg 
LEFT JOIN transactions as t USING (transaction_date)


UNION ALL

SELECT 
cl.residence,
t.transaction_date
FROM transactions as t
inner join clients as cl on (cl.account = t.account) 
LEFT JOIN reg_counts_tunion as rg USING (transaction_date)


where transaction_date is NULL --AND reg_counts_tunion.country = clients.residence

GROUP BY transaction_date
ORDER BY transaction_date


--Filter for residence
SELECT 
TDM.t_date,
cl.residence,
SUM(t.total_buy), 
SUM(t.total_sell),
cd.campaign_id,
rc.counts
FROM TestDateMerge as TDM
inner join clients as cl on (cl.residence = TDM.country)
left outer join transactions as t on (t.account = cl.account AND t.transaction_date = TDM.t_date)
--left outer join clients as cl on (t.account = cl.account)
left outer join reg_counts as rc on (t.transaction_date =  rc.red_date AND rc.country=cl.residence)
left outer join campaign_dates as cd on ((t.transaction_date = cd.transaction_date) AND ((cd.country = cl.residence) OR (cd.country = '')))
--WHERE (cl.residence = 'ru')
group by TDM.t_date,  cl.residence, rc.counts
order by TDM.t_date,  cl.residence, rc.counts


