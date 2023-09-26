SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campus](
	[campus_id] [int] IDENTITY(1,1) NOT NULL,
	[campus_name] [varchar](150) NULL,
	[address] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[campus_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

set ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[course_id] [int] IDENTITY(1,1) NOT NULL,
	[course_code] [varchar](10) NULL,
	[course_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[student_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[campus_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Results](
	[student_result_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[course_id] [int] NULL,
	[result] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[student_result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Campus] ON 
GO
INSERT [dbo].[Campus] ([campus_id], [campus_name], [address]) VALUES (1, N'Plymouth', N'734 East Green Milton Street')
GO
INSERT [dbo].[Campus] ([campus_id], [campus_name], [address]) VALUES (2, N'Manchester', N'442 South White Hague St.')
GO
INSERT [dbo].[Campus] ([campus_id], [campus_name], [address]) VALUES (3, N'Norwich', N'149 North White Cowley Avenue')
GO
INSERT [dbo].[Campus] ([campus_id], [campus_name], [address]) VALUES (4, N'Brighton', N'815 South Old Avenue')
GO
INSERT [dbo].[Campus] ([campus_id], [campus_name], [address]) VALUES (5, N'Ipswich', N'956 South Rocky Old Drive')
GO
INSERT [dbo].[Campus] ([campus_id], [campus_name], [address]) VALUES (6, N'Milton Keynes', N'884 West Rocky Fabien Drive')
GO
INSERT [dbo].[Campus] ([campus_id], [campus_name], [address]) VALUES (7, N'Northampton', N'315 East White Cowley Way')
GO
SET IDENTITY_INSERT [dbo].[Campus] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 
GO
INSERT [dbo].[Course] ([course_id], [course_code], [course_name]) VALUES (1, N'ACC100', N'Accounting')
GO
INSERT [dbo].[Course] ([course_id], [course_code], [course_name]) VALUES (2, N'CHM100', N'Chemistry')
GO
INSERT [dbo].[Course] ([course_id], [course_code], [course_name]) VALUES (3, N'BIO100', N'Biology')
GO
INSERT [dbo].[Course] ([course_id], [course_code], [course_name]) VALUES (4, N'ENG100', N'Engineering')
GO
INSERT [dbo].[Course] ([course_id], [course_code], [course_name]) VALUES (5, N'LAW100', N'Legal Studies')
GO
INSERT [dbo].[Course] ([course_id], [course_code], [course_name]) VALUES (6, N'POL100', N'Politics')
GO
INSERT [dbo].[Course] ([course_id], [course_code], [course_name]) VALUES (7, N'SFW100', N'Software Engineering')
GO
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (1, N'Ginger', N'Huang', 2)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (2, N'Jami', N'Watts', 5)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (3, N'Erika', N'English', 3)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (4, N'Jeffrey', N'Cole', 3)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (5, N'Tania', N'Hardin', 2)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (6, N'Ginger', N'Torres', 7)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (7, N'Frank', N'Todd', 7)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (8, N'Alan', N'Faulkner', 3)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (9, N'Norma', N'York', 6)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (10, N'Claudia', N'Aguilar', 5)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (11, N'Esther', N'Charles', 3)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (12, N'Alfred', N'Petty', 5)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (13, N'Wallace', N'Bonilla', 5)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (14, N'Marla', N'Cuevas', 4)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (15, N'Carolyn', N'Rowland', 5)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (16, N'Barry', N'Wade', 7)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (17, N'Terence', N'Phelps', 1)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (18, N'Paula', N'Bolton', 5)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (19, N'Frankie', N'Schmidt', 2)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (20, N'Lara', N'Myers', 4)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (21, N'Marisa', N'Carroll', 3)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (22, N'Dexter', N'Velazquez', 1)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (23, N'Joni', NULL, 5)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (24, N'Kim', N'Hawkins', 4)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (25, N'Margaret', N'Garrison', 5)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (26, N'Kyle', N'Collins', 5)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (27, N'Willie', N'Rowe', 3)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (28, N'Valerie', N'Brandt', 4)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (29, N'Connie', N'Noble', 1)
GO
INSERT [dbo].[Student] ([student_id], [first_name], [last_name], [campus_id]) VALUES (30, N'Elisa', N'Gomez', 7)
GO
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Student_Results] ON 
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (1, 1, 1, 89)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (2, 1, 2, 74)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (3, 1, 3, 36)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (4, 1, 4, 44)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (5, 1, 5, 68)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (6, 1, 6, 80)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (7, 1, 7, 71)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (8, 2, 1, 59)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (9, 2, 2, 72)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (10, 2, 3, 31)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (11, 2, 4, 72)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (12, 2, 5, 79)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (13, 2, 6, 35)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (14, 2, 7, 87)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (15, 3, 1, 32)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (16, 3, 2, 90)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (17, 3, 3, 35)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (18, 3, 4, 81)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (19, 3, 5, 36)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (20, 3, 6, 75)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (21, 3, 7, 80)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (22, 4, 1, 69)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (23, 4, 2, 80)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (24, 4, 3, 37)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (25, 4, 4, 83)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (26, 4, 5, 47)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (27, 4, 6, 71)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (28, 4, 7, 62)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (29, 5, 1, 70)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (30, 5, 2, 89)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (31, 5, 3, 51)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (32, 5, 4, 39)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (33, 5, 5, 31)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (34, 5, 6, 30)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (35, 5, 7, 56)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (36, 6, 1, 52)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (37, 6, 2, 55)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (38, 6, 3, 59)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (39, 6, 4, 90)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (40, 6, 5, 40)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (41, 6, 6, 84)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (42, 6, 7, 65)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (43, 7, 1, 60)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (44, 7, 2, 87)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (45, 7, 3, 49)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (46, 7, 4, 66)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (47, 7, 5, 46)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (48, 7, 6, 31)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (49, 7, 7, 57)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (50, 8, 1, 44)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (51, 8, 2, 55)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (52, 8, 3, 0)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (53, 8, 4, 54)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (54, 8, 5, 74)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (55, 8, 6, 45)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (56, 8, 7, 53)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (57, 9, 1, 79)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (58, 9, 2, 55)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (59, 9, 3, 36)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (60, 9, 4, 47)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (61, 9, 5, 86)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (62, 9, 6, 46)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (63, 9, 7, 31)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (64, 10, 1, 82)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (65, 10, 2, 88)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (66, 10, 3, 46)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (67, 10, 4, 61)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (68, 10, 5, 53)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (69, 10, 6, 84)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (70, 10, 7, 40)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (71, 11, 1, 0)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (72, 11, 2, 52)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (73, 11, 3, 36)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (74, 11, 4, 47)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (75, 11, 5, 57)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (76, 11, 6, 59)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (77, 11, 7, 44)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (78, 12, 1, 39)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (79, 12, 2, 37)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (80, 12, 3, 57)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (81, 12, 4, 50)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (82, 12, 5, 90)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (83, 12, 6, 40)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (84, 12, 7, 63)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (85, 13, 1, 34)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (86, 13, 2, 49)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (87, 13, 3, 47)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (88, 13, 4, 56)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (89, 13, 5, 64)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (90, 13, 6, 36)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (91, 13, 7, 58)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (92, 14, 1, 86)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (93, 14, 2, 49)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (94, 14, 3, 70)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (95, 14, 4, 38)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (96, 14, 5, 78)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (97, 14, 6, 75)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (98, 14, 7, 32)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (99, 15, 1, 54)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (100, 15, 2, 45)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (101, 15, 3, 90)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (102, 15, 4, 72)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (103, 15, 5, 85)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (104, 15, 6, 66)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (105, 15, 7, 57)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (106, 16, 1, 76)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (107, 16, 2, 67)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (108, 16, 3, 66)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (109, 16, 4, 73)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (110, 16, 5, 68)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (111, 16, 6, 85)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (112, 16, 7, 66)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (113, 17, 1, 90)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (114, 17, 2, 57)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (115, 17, 3, 44)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (116, 17, 4, 37)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (117, 17, 5, 64)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (118, 17, 6, 77)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (119, 17, 7, 44)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (120, 18, 1, 53)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (121, 18, 2, 55)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (122, 18, 3, 56)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (123, 18, 4, 74)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (124, 18, 5, 62)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (125, 18, 6, 33)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (126, 18, 7, 79)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (127, 19, 1, 40)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (128, 19, 2, 41)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (129, 19, 3, 33)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (130, 19, 4, 74)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (131, 19, 5, 71)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (132, 19, 6, 55)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (133, 19, 7, 66)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (134, 20, 1, 39)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (135, 20, 2, 77)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (136, 20, 3, 57)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (137, 20, 4, 48)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (138, 20, 5, 67)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (139, 20, 6, 37)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (140, 20, 7, 87)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (141, 21, 1, 45)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (142, 21, 2, 70)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (143, 21, 3, 53)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (144, 21, 4, 55)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (145, 21, 5, 64)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (146, 21, 6, 82)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (147, 21, 7, 30)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (148, 22, 1, 82)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (149, 22, 2, 83)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (150, 22, 3, 61)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (151, 22, 4, 89)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (152, 22, 5, 74)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (153, 22, 6, 68)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (154, 22, 7, 71)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (155, 23, 1, 43)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (156, 23, 2, 34)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (157, 23, 3, 87)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (159, 23, 5, 37)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (160, 23, 6, 61)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (161, 23, 7, 72)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (162, 24, 1, 69)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (163, 24, 2, 30)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (164, 24, 3, 36)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (165, 24, 4, 43)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (166, 24, 5, 85)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (167, 24, 6, 34)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (168, 24, 7, 54)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (169, 25, 1, 59)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (170, 25, 2, 34)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (171, 25, 3, 84)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (172, 25, 4, 49)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (173, 25, 5, 60)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (174, 25, 6, 32)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (175, 25, 7, 65)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (176, 26, 1, 50)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (177, 26, 2, 63)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (178, 26, 3, 39)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (179, 26, 4, 72)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (180, 26, 5, 56)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (181, 26, 6, 59)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (182, 26, 7, 70)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (183, 27, 1, 76)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (184, 27, 2, 31)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (185, 27, 3, 63)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (186, 27, 4, 68)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (187, 27, 5, 74)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (188, 27, 6, 49)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (189, 27, 7, 54)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (190, 28, 1, 42)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (191, 28, 2, 60)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (192, 28, 3, 74)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (193, 28, 4, 49)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (194, 28, 5, 87)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (195, 28, 6, 33)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (196, 28, 7, 88)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (197, 29, 1, 77)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (198, 29, 2, 39)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (199, 29, 3, 53)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (200, 29, 4, 68)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (201, 29, 5, 66)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (202, 29, 6, 80)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (203, 29, 7, 31)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (204, 30, 1, 90)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (205, 30, 2, 85)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (207, 30, 4, 69)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (208, 30, 5, 67)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (209, 30, 6, 33)
GO
INSERT [dbo].[Student_Results] ([student_result_id], [student_id], [course_id], [result]) VALUES (210, 30, 7, 78)
GO
SET IDENTITY_INSERT [dbo].[Student_Results] OFF
GO
CREATE PROCEDURE getStudent_avg_vs_result
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
		[s].[student_id]
		,s.[first_name]
		,[s].[last_name]
		,[full_name] = s.[first_name] + ' ' + s.[last_name]
		,c.[course_name]
		,sr.[result]
		,[Avg_vs_result_ratio] = [total].[average] / [sr].[result]
	FROM
		[dbo].[Student_Results] [sr]
			INNER JOIN [total] ON [total].student_id  = sr.[student_id]
			INNER JOIN [dbo].[Student] [s] ON sr.[student_id] = s.[student_id]
			INNER JOIN [dbo].[Course] [c] ON sr.[course_id] = c.[course_id]
	WHERE
		sr.[student_id] = @student_id
	ORDER BY
		6 DESC
END
GO