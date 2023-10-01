CREATE PROCEDURE No3_CourseAverages
AS
BEGIN
    SET NOCOUNT ON;
    SELECT Course.course_name AS Course_Name, AVG(Student_Results.result) AS CourseAverage
    FROM Course
    LEFT JOIN Student_Results ON Course.course_id = Student_Results.course_id
    GROUP BY Course.course_name
    ORDER BY CourseAverage DESC;
END;

