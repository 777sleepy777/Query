SELECT s.subject_name , st.name, t.fullname, ROUND(AVG(gr.mark), 0)  as avg_mark 
FROM grades AS gr
LEFT JOIN subjects s ON s.id = gr.subjects_id 
LEFT JOIN students st ON st.id = gr.students_id  
LEFT JOIN teachers t ON t.id = s.teacher_id 
WHERE st.name  = 'Сагайко Юлія Андріївна'
AND t.fullname = 'Калинович Сміяна Вітанівна'
GROUP BY s.subject_name 
;
