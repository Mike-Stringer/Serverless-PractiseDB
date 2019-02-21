--Filter for residence
SELECT DISTINCT
transaction_date,
residence,
daily_total_buy, 
daily_total_sell, 
campaign_id,
reg_counts
FROM 
(
    SELECT
    med.transaction_date,
    med.residence,
    med.daily_total_buy, 
    med.daily_total_sell, 
    cd.campaign_id,
    rc.counts as reg_counts
    FROM metrics_every_day as med
    left outer join campaign_dates as cd on ((med.transaction_date = cd.transaction_date) AND ((cd.country = med.residence) OR (cd.country = '')))
    left outer join reg_counts as rc on (med.transaction_date =  rc.red_date AND rc.country=med.residence)
    
    UNION ALL 
    
    SELECT 
    rc.red_date as transaction_date,
    rc.country as residence,
    med.daily_total_buy, 
    med.daily_total_sell, 
    cd.campaign_id,
    rc.counts as reg_counts
    FROM reg_counts as rc
    left outer join campaign_dates as cd on ((rc.red_date = cd.transaction_date) AND ((cd.country = rc.country) OR (cd.country = '')))
    left outer join metrics_every_day as med on (med.transaction_date =  rc.red_date AND rc.country=med.residence)
) as r
--WHERE (r.residence = 'id')
order by r.transaction_date,  r.residence