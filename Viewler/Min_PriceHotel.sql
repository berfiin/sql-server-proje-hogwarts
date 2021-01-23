USE [HotelManagement]
GO


CREATE VIEW [dbo].[MinPrice_Hotel]
AS
SELECT TOP 1 Hotel_Name, MIN(Price_Per_Night) AS MINHOTELPRICE FROM Hotel GROUP BY Hotel_Name ORDER BY MINHOTELPRICE;
GO

