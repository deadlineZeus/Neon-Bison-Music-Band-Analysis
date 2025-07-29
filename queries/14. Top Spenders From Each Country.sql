-- Top spenders from each country

WITH Customer_Country_Spending AS (
				SELECT c.first_name || ' ' || c.last_name as Customer_Name, 
	            i.billing_country AS Country, ROUND(SUM(i.total)::numeric, 2) AS Total_Spending,
				ROW_NUMBER() OVER(PARTITION BY i.billing_country ORDER BY SUM(i.total)) AS Row_Num
				FROM invoice i JOIN customer c ON c.customer_id = i.customer_id
				GROUP BY c.first_name, c.last_name, Country, i.billing_country
				ORDER BY 2 ASC, 3 DESC
				)
SELECT Country, Customer_Name, Total_Spending FROM Customer_Country_Spending WHERE Row_Num=1;