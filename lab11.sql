-- Display assignments for the course COMP1236
SELECT title, due_date FROM assignments WHERE course_id = 'COMP1234';
-- Find the earliest assignment due date
SELECT min(due_date) FROM assignments;
-- 1. Retrieve all data from the courses table.
SELECT * 
FROM courses;

-- 2. Retrieve the first 10 records from the assignments table.
SELECT * 
FROM assignments
LIMIT 10;

-- 3. Get the total number of records in the courses table.
SELECT count(*) 
FROM courses;

-- 4. Find the earliest due_date from the assignments table.
SELECT min(due_date) 
FROM assignments;

-- 5. Retrieve all courses where the course_name starts with 'Intro'.
SELECT * 
FROM courses
WHERE course_name LIKE 'Intro%';

-- 6. Retrieve all assignments that are not 'Completed', ordered by due_date.
SELECT * 
FROM assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- 7. Retrieve assignments that are not 'Completed', belong to a course with a course_id starting with 'COMM%', and have a due_date before '2024-12-31'. Order by due_date.
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'
  AND course_id LIKE 'COMM%'
  AND due
-- 8. Find the title and due_date of assignments for the course COMP1234.
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';

-- 9. Find the earliest assignment due date in the assignments table.
SELECT min(due_date)
FROM assignments;

-- 10. Find the latest assignment due date in the assignments table.
SELECT max(due_date)
FROM assignments;

-- 11. Find the title and course_id of assignments due on 2024-10-08.
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

-- 12. Find the title and due_date of assignments due in October 2024.
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

-- 13. Find the most recent due_date of assignments with a status of "Completed".
SELECT max(due_date)
FROM assignments
WHERE status = 'Completed';
