USE [HotelManagement]
GO

CREATE VIEW [dbo].[MaxPrice_Hotel]
AS
SELECT TOP 1 Hotel_Name, MAX(Price_Per_Night) AS MAXHOTELPRICE FROM Hotel GROUP BY Hotel_Name ORDER BY MAXHOTELPRICE DESC;
GO

