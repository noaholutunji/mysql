SELECT students.name FROM STUDENTS
JOIN Friends ON students.id = friends.id
JOIN Packages AS sp ON students.id = sp.id
JOIN Packages AS fp ON friends.friend_id = fp.id
WHERE sp.salary < fp.salary
ORDER BY fp.salary;