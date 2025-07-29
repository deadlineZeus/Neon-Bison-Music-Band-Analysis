-- Who is the senior most employee based on the jon title?

SELECT employee_id, first_name, last_name, levels 
FROM employee
ORDER BY levels DESC LIMIT 1