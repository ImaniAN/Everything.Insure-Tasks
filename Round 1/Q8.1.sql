--Considering that all the data from the table can be returened. 
--Returning all rows that have a null value will expose data that is NULL
--NULL data can cause a null exeptions and other different types of errors.
--Please continue to Q8.2.sql for the next step. The Solution is provided in Q8.2.sql
SELECT first_name, last_name
FROM Student
WHERE first_name IS NULL OR last_name IS NULL;
