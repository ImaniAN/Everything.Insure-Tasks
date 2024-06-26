--I then used the results of the previous queries to confirm the exact error by querying  through the stored procedure
DECLARE @esther_student_id INT;
-- Query the database to find Esther Charles' Student ID
SELECT @esther_student_id = student_id
FROM Student
WHERE first_name IS NULL OR last_name IS NULL;
BEGIN
-- Execute the "getStudent_avg_vs_result" procedure with her Student ID
    EXEC getStudent_avg_vs_result @student_id = @esther_student_id;
END;
--This specific query returned a "NoValue" where there is a NULL value within the table. The Solution is provided for Q8.2.sql

