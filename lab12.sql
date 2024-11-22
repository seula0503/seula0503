SELECT CONCAT(course_name, ' - ', semester) AS course_semester
FROM courses;

SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Friday%';

SELECT course_id, title, status, due_date
FROM assignments
WHERE due_date > CURRENT_DATE;

SELECT status, COUNT(*) AS count_assignments
FROM assignments
GROUP BY status;

SELECT course_name, LENGTH(course_name) AS name_length
FROM courses
ORDER BY name_length DESC
LIMIT 1;

SELECT UPPER(course_name) AS uppercase_course_name
FROM courses;

SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';

SELECT title, due_date
FROM assignments
WHERE due_date IS NULL;

SELECT courses.course_id, COUNT(assignments.id) AS total_assignments
FROM courses
LEFT JOIN assignments ON courses.course_id = assignments.course_id
GROUP BY courses.course_id;

SELECT courses.course_id, courses.course_name
FROM courses
LEFT JOIN assignments ON courses.course_id = assignments.course_id
WHERE assignments.id IS NULL;
