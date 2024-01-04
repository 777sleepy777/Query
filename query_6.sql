SELECT s.id, s.name , g.group_name AS result
FROM students AS s
LEFT JOIN groups AS g ON g.id = s.group_id  
WHERE g.group_name = "Системи Управління";
