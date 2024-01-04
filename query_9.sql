SELECT s.subject_name , st.name  as avg_mark 
FROM grades AS gr
LEFT JOIN subjects s ON s.id = gr.subjects_id 
LEFT JOIN students st ON st.id = gr.students_id  
WHERE st.name  = 'Павліш Божена-Марія Ігорівна'
GROUP BY s.subject_name 
;
