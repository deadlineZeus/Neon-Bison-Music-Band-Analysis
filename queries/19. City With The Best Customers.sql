-- City with best customers?

SELECT billing_city, SUM(total) as Invoice_Total
FROM invoice
GROUP BY billing_city
ORDER BY Invoice_Total DESC 
LIMIT 1