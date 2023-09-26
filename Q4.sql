CREATE PROCEDURE No4_StudentResults
    @student_id INT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        CONCAT(Student.first_name, ' ', Student.last_name) AS StudentName,
        Course.course_name AS CourseName,
        Student_Results.result AS Result,
        CASE
            WHEN Student_Results.result > 50 THEN 'Pass'
            ELSE 'Fail'
        END AS Promotion
    FROM
        Student
    JOIN
        Student_Results ON Student.student_id = Student_Results.student_id
    JOIN
        Course ON Student_Results.course_id = Course.course_id
    WHERE
        Student.student_id = @student_id
    ORDER BY
        CourseName;
END;
