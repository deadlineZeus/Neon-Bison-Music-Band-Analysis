-- How many customers have never made a repeat purchase?

SELECT COUNT(*) AS one_time_customers
FROM (
    SELECT 
        i.customer_id,
        COUNT(i.invoice_id) AS num_purchases
    FROM invoice i
    GROUP BY i.customer_id
    HAVING COUNT(i.invoice_id) = 1
) AS single_purchase_customers;

SELECT
    COUNT(*) FILTER (WHERE num_purchases = 1) AS one_time_customers,
    COUNT(*) FILTER (WHERE num_purchases > 1) AS repeat_customers,
    COUNT(*) AS total_customers
FROM (
    SELECT customer_id, COUNT(invoice_id) AS num_purchases
    FROM invoice
    GROUP BY customer_id
) AS customer_summary;
