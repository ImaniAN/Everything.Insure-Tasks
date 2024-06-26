-- Alteration for the Procedure to return the correct results
ALTER PROCEDURE [dbo].[getStudent_avg_vs_result]
    @student_id int
AS
BEGIN
    SET NOCOUNT ON;

    ;WITH total AS
    (
        SELECT
            sr.[student_id]
            ,[count]= count(1)
            ,[average] = sum(sr.[result]) / count(1)
            ,[total] = sum(sr.[result])
        FROM
            [dbo].[Student_Results] [sr]
        WHERE
            sr.[student_id] = @student_id
        GROUP BY
            sr.[student_id]
    )
    SELECT
        [s].[student_id],
        ISNULL(s.[first_name], 'NULL_first_name') AS first_name, -- Using a placeholder text for Null value
        ISNULL(s.[last_name], 'NULL_last_name') AS last_name, -- Using a placeholder text for Null value
        [full_name] = ISNULL(s.[first_name], 'NULL_first_name') + ' ' + ISNULL(s.[last_name], 'NULL_last_name'), -- Using a placeholder text for Null value
        [c].[course_name],
        [sr].[result],
        [Avg_vs_result_ratio] = CASE
            WHEN [sr].[result] > 0 THEN [total].[average] / [sr].[result]
            WHEN [sr].[result] = 0 THEN 1  
            ELSE NULL
        END
    FROM
        [dbo].[Student_Results] [sr]
    INNER JOIN [total] ON [total].student_id  = sr.[student_id]
    INNER JOIN [dbo].[Student] [s] ON sr.[student_id] = s.[student_id]
    INNER JOIN [dbo].[Course] [c] ON sr.[course_id] = c.[course_id]
    WHERE
        sr.[student_id] = @student_id
    ORDER BY
        6 DESC
END;
