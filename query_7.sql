SELECT gr.id, st.name, g.group_name, sub.subject_name, gr.mark AS result
FROM grades AS gr
LEFT JOIN students AS st ON st.id = gr.students_id  
LEFT JOIN groups AS g ON g.id = st.group_id 
LEFT JOIN subjects AS sub ON sub.id = gr.subjects_id  
WHERE g.group_name = "Системи Управління" AND
 sub.subject_name  = "Теорія ймовірностей";

