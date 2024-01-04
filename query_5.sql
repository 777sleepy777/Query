SELECT s.id, s.subject_name , t.fullname AS result
FROM subjects AS s
LEFT JOIN teachers AS t ON t.id = s.teacher_id 
WHERE t.fullname = "Калинович Сміяна Вітанівна"
