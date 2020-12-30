USE [Hogwarts]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee](
	[employee_id] [int] NOT NULL,
	[emp_name] [nvarchar](50) NULL,
	[emp_surname] [nvarchar](50) NULL,
	[emp_birthdate] [datetime] NULL,
	[emp_sex] [nvarchar](10) NULL,
	[emp_phone] [nvarchar](50) NULL,
	[emp_email] [nvarchar](50) NULL,
	[emp_salary] [money] NULL,
	[emp_task] [nvarchar](200) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


