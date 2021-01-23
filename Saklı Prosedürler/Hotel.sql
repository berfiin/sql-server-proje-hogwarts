ALTER PROCEDURE [dbo].[sp_Hotel]
AS 
BEGIN
SELECT Hotel_Name,COUNT(Hotel_Name) AS CustomerQuantity FROM vw_Hotel GROUP BY Hotel_Name;
END