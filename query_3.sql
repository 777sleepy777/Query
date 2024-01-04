SELECT g.group_name, ROUND(AVG(gr.mark), 2) as avg_mark 
FROM grades AS gr
LEFT JOIN students AS st ON st.id = gr.students_id 
LEFT JOIN groups g ON g.id = st.group_id 
WHERE gr.subjects_id = 2
GROUP BY st.group_id 
ORDER BY avg_mark DESC 
;
