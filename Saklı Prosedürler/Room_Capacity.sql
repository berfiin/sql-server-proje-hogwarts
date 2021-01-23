ALTER PROCEDURE [dbo].[ROOM_CAPACITY]

(@NUMBER_OF_PERSON INT,
 @Sonuc CHAR(50) output
)
AS
IF EXISTS (SELECT * FROM Booking WHERE Number_Of_Person=@NUMBER_OF_PERSON)
SET @Sonuc='suitable for room capacity'
 
ELSE
 
SET @Sonuc='Not suitable for room capacity!'
 
RETURN @Sonuc