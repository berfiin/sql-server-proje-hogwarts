USE [Hotel]
GO

/****** Object:  Table [dbo].[Customer]    Script Date: 29.12.2020 22:35:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer](
	[cus_id] [int] IDENTITY(1,1) NOT NULL,
	[cus_fname] [nvarchar](100) NULL,
	[cus_lname] [nvarchar](100) NULL,
	[cus_genger] [bit] NULL,
	[cus_address] [nvarchar](500) NULL,
	[cus_phone] [nvarchar](50) NULL,
	[cus_email] [nvarchar](150) NULL,
	[cus_password] [nvarchar](50) NULL,
	[cus_card_information] [nvarchar](150) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[cus_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


