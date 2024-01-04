SELECT st.name, ROUND(AVG(gr.mark), 2) as avg_mark 
FROM grades AS gr
LEFT JOIN students AS st ON st.id = gr.students_id 
LEFT JOIN subjects s ON s.id = gr.subjects_id 
WHERE s.subject_name = 'Хімія'
GROUP BY st.name
ORDER BY avg_mark DESC 
LIMIT 1;
