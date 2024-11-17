-- Display assignments for the course COMP1236
SELECT title, due_date FROM assignments WHERE course_id = 'COMP1234';
-- Find the earliest assignment due date
SELECT min(due_date) FROM assignments;
