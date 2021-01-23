USE [HotelManagement]
GO


CREATE VIEW [dbo].[PET_ALLOW_HOTELS]
AS
SELECT Hotel_Name,Hotel_Type,Price_Per_Night,Pet_Allow FROM [dbo].[Service]
INNER JOIN Hotel On [dbo].[Service].Service_Id=Hotel.Service_Id
WHERE Pet_Allow=1
GO

