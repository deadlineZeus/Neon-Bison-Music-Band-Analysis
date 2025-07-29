-- Determine the customers that have spent the most on Music for each country WITH Country_Top_Spenders AS 

WITH Country_Top_Spenders AS (
	
							SELECT c.first_name || ' ' || c.last_name AS Customer_Name, c.country AS Country, 
							ROUND(SUM(il.unit_price * il.quantity)::numeric, 2) AS Total_Spent,
							ROW_NUMBER() OVER (PARTITION BY c.country ORDER BY SUM(il.unit_price * il.quantity) DESC) AS Row_Num
							FROM customer c
							JOIN invoice i ON c.customer_id = i.customer_id
							JOIN invoice_line il ON i.invoice_id = il.invoice_id

							GROUP BY c.customer_id, c.first_name, c.last_name, c.country
	                       )
	
SELECT Country, Customer_Name, Total_Spent FROM Country_Top_Spenders WHERE Row_Num=1;