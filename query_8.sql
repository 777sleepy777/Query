SELECT s.subject_name , ROUND(AVG(gr.mark), 2) as avg_mark 
FROM grades AS gr
LEFT JOIN subjects s ON s.id = gr.subjects_id 
LEFT JOIN teachers t ON t.id = s.teacher_id  
WHERE t.fullname  = 'Дейсун Щек Тихонович'
GROUP BY s.subject_name 
ORDER BY avg_mark DESC 
;
