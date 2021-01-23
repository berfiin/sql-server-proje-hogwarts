USE [HotelManagement]
GO

CREATE VIEW [dbo].[vw_hotel]
AS
SELECT Hotel.Hotel_Name,Customer.Customer_Id, Hotel.Hotel_Id
FROM Hotel
INNER JOIN Customer ON Customer.Hotel_Id = Hotel.Hotel_Id
GO

