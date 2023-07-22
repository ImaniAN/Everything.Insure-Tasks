CREATE PROCEDURE No5_CourseStudents_Above75
    @course_id INT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        CONCAT(Student.first_name, ' ', Student.last_name) AS StudentName,
        Course.course_name AS CourseName,
        Campus.campus_name AS CampusName
    FROM
        Student_Results
    JOIN
        Course ON Student_Results.course_id = Course.course_id
    JOIN
        Student ON Student_Results.student_id = Student.student_id
    JOIN
        Campus ON Student.campus_id = Campus.campus_id
    WHERE
        Student_Results.result > 75
        AND Course.course_id = @course_id;
END;
