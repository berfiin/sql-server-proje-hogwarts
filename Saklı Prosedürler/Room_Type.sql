ALTER PROCEDURE [dbo].[sp_RoomType]
AS
BEGIN
SELECT TOP(1) MAX(SUM(Room_Type_Id)) OVER()
FROM Room_Type
GROUP BY Room_Type_Id;
END