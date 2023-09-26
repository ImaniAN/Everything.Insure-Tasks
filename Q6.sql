CREATE FUNCTION No6_StudentInfo
(
    @student_id INT
)
RETURNS NVARCHAR(MAX)
AS
BEGIN
    DECLARE @StudentName NVARCHAR(MAX);
    DECLARE @CampusName NVARCHAR(150);
    DECLARE @Result NVARCHAR(MAX);

    SELECT @StudentName = CONCAT(Student.first_name, ' ', Student.last_name)
    FROM Student
    WHERE Student.student_id = @student_id;

    SELECT @CampusName = Campus.campus_name
    FROM Campus
    INNER JOIN Student ON Campus.campus_id = Student.campus_id
    WHERE Student.student_id = @student_id;

    SET @Result = CONCAT(@StudentName, ' (', CAST(@student_id AS NVARCHAR(50)), ') - ', @CampusName);

    RETURN @Result;
END;
