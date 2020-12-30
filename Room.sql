USE [Hogwarts]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl.room](
	[room_id] [int] NOT NULL,
	[room_price] [money] NULL,
	[room_type] [int] NULL,
	[availability] [nchar](20) NULL,
	[bed_number] [int] NULL,
	[room_description] [nchar](100) NULL,
	[employee_id] [int] NULL,
	[hotel_id] [int] NULL,
	[cus_id] [int] NULL,
 CONSTRAINT [PK_tbl_room] PRIMARY KEY CLUSTERED 
(
	[room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tbl.room]  WITH CHECK ADD  CONSTRAINT [FK_tbl.room_tbl.room] FOREIGN KEY([employee_id])
REFERENCES [dbo].[Employee] ([employee_id])
GO

ALTER TABLE [dbo].[tbl.room] CHECK CONSTRAINT [FK_tbl.room_tbl.room]
GO


