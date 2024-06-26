-- Alteration for the Procedure to return the correct results
ALTER PROCEDURE getStudent_avg_vs_result
	@student_id int
AS
BEGIN
	SET NOCOUNT ON;

	;WITH total AS
	(
		SELECT
			sr.student_id
			,count= count(1)
			,average = sum(sr.result) / count(1)
			,total = sum(sr.result)
		FROM
			Student_Results sr
		WHERE
			sr.student_id = @student_id
		GROUP BY
			sr.student_id
	)
    SELECT
		s.student_id
		,s.first_name
		,s.last_name
		,full_name = s.first_name + ' ' + s.last_name
		,c.course_name
		,sr.result
	,Avg_vs_result_ratio = CASE
    WHEN sr.result > 0 THEN total.average / sr.result -- The division by zero can be handles by only allowing a results that are > 0
    WHEN sr.result = 0 THEN 1  -- Set the result to 1 to avoid division by zero
    ELSE NULL  -- Handle NULL average or other cases
END

	FROM
		Student_Results sr
			INNER JOIN total ON total.student_id  = sr.student_id
			INNER JOIN Student s ON sr.student_id = s.student_id
			INNER JOIN Course c ON sr.course_id = c.course_id
	WHERE
		sr.student_id = @student_id
	ORDER BY
		6 DESC
END