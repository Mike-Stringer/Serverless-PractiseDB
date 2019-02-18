SELECT 
date_joined,
count(account)
FROM clients
Where residence = 'id'
GROUP BY date_joined
ORDER BY date_joined