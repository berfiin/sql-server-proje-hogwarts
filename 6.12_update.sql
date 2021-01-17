--The Most Popular Hotel
CREATE VIEW vw_hotel
AS
SELECT Hotel.Hotel_Name,Customer.Customer_Id, Hotel.Hotel_Id
FROM Hotel
INNER JOIN Customer ON Customer.Hotel_Id = Hotel.Hotel_Id

SELECT Hotel_Name,COUNT(Hotel_Name) AS HotelCount FROM vw_Hotel
GROUP BY Hotel_Name;


CREATE PROCEDURE sp_Hotel
AS 
BEGIN
SELECT Hotel_Name,COUNT(Hotel_Name) AS CustomerQuantity FROM vw_Hotel GROUP BY Hotel_Name;
END

exec sp_Hotel 

--ROOM TYPE
CREATE PROCEDURE sp_RoomType
AS
BEGIN
SELECT TOP(1) MAX(SUM(Room_Type_Id)) OVER()
FROM Room_Type
GROUP BY Room_Type_Id;
END

exec sp_RoomType

