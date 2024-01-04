SELECT st.name, s.subject_name , g.group_name , gr.mark , gr.mark_time 
FROM grades AS gr
LEFT JOIN subjects s ON s.id = gr.subjects_id 
LEFT JOIN students st ON st.id = gr.students_id  
LEFT JOIN groups g ON g.id = st.group_id  
WHERE g.group_name = 'Системи Управління'
AND s.subject_name = 'Теорія ймовірностей'
AND gr.mark_time IN (SELECT gr.mark_time 
FROM grades AS gr
LEFT JOIN subjects s ON s.id = gr.subjects_id 
LEFT JOIN students st ON st.id = gr.students_id  
LEFT JOIN groups g ON g.id = st.group_id 
WHERE g.group_name = 'Системи Управління'
AND s.subject_name = 'Теорія ймовірностей'
ORDER BY gr.mark_time DESC 
LIMIT 1)
