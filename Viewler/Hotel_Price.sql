USE [HotelManagement]
GO

CREATE VIEW [dbo].[HotelPrice]
AS
SELECT Hotel_Name, Hotel_Id, Price_Per_Night 
FROM Hotel
GO

