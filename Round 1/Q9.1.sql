USE [Everything_Insure]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[No9_MissingCourseResults]

SELECT	'Return Value' = @return_value
GO
