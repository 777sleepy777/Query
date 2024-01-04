SELECT s.subject_name , st.name, t.fullname  as avg_mark 
FROM grades AS gr
LEFT JOIN subjects s ON s.id = gr.subjects_id 
LEFT JOIN students st ON st.id = gr.students_id  
LEFT JOIN teachers t ON t.id = s.teacher_id 
WHERE st.name  = 'Павліш Божена-Марія Ігорівна'
AND t.fullname = 'Дейсун Щек Тихонович'
GROUP BY s.subject_name 
;
