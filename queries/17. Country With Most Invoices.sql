-- Which country has the most invoices?

SELECT billing_country, COUNT(invoice_id) as Total_Invoice
FROM invoice
GROUP BY billing_country 
ORDER BY Total_Invoice DESC;