--Requested the specific ID of the Specific student 
--This is to make sure that the error can be identified by isolating it at the level it occurs.
--No error was found at this point
--Please continue to Q7.2.sql for the next step

SELECT student_id
FROM Student
WHERE first_name = 'Esther' AND last_name = 'Charles';