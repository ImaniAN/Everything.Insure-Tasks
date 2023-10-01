--I then used the results of the previous queries to confirm the exact error by querying  through the stored procedure
--This is to make sure that the error can be identified by isolating it at the level it occurs.
--This specific query returned a "Divide by zero error encountered" ERROR. 

DECLARE @esther_student_id INT;
SELECT @esther_student_id = student_id
FROM Student
WHERE first_name = 'Esther' AND last_name = 'Charles';
BEGIN
-- Execute the "getStudent_avg_vs_result" procedure with the Student ID
    EXEC getStudent_avg_vs_result @student_id = @esther_student_id;
END;

--Please continue to Q7.3.sql for the next step. The Solution is provided in Q7.3.sql

