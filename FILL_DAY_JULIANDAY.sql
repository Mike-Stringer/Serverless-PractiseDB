SELECT 
campaign_id, 
the_date, 
ROUND(JULIANDAY(the_date) - JULIANDAY(campaigns_id.start_date)),
ROUND(JULIANDAY(the_date) - JULIANDAY(campaigns_id.end_date))
FROM all_dates_temp
INNER JOIN campaigns_id on ((((JULIANDAY(campaigns_id.start_date) - 30) <= JULIANDAY(the_date))) AND (JULIANDAY(the_date) <= (JULIANDAY(campaigns_id.end_date) + 350)))