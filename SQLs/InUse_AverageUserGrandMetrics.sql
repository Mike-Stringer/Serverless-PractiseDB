SELECT
c.account,
c.residence,
ct.grand_total_buy,
ct.grand_total_sell
FROM
clients_total as ct
inner join clients as c on (ct.account = c.account)
WHERE c.residence = "ru"
GROUP by c.account
ORDER by c.account

