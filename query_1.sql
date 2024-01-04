SELECT ROUND(AVG(gr.mark), 2) as avg_mark, st.name  AS result
FROM grades AS gr
LEFT JOIN students AS st ON st.id = gr.students_id 
GROUP BY st.name
ORDER BY avg_mark DESC 
LIMIT 5;
