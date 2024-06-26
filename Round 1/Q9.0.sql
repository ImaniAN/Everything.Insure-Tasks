CREATE PROCEDURE No9_MissingCourseResults
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        Student.first_name,
        Student.last_name,
        Student.first_name + ' ' + Student.last_name AS FullName,
        Course.course_name,
        Course.course_id
    FROM
        Student
    LEFT JOIN Student_Results ON Student.student_id = Student_Results.student_id
    LEFT JOIN Course ON Student_Results.course_id = Course.course_id
    WHERE --NULL or 0 can show desired results
        (Student_Results.result IS NULL OR Student_Results.result = 0) --Shows which students were absent on the day of the test, and haven't yet completed it.
    ORDER BY
        Student.last_name, Student.first_name;
END;
