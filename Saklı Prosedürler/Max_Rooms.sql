ALTER PROCEDURE [dbo].[MAX_ROOMS]
  @Number_Of_Person int OUTPUT,
  @Number_Of_Bed int OUTPUT
  AS 
  BEGIN
  SELECT Number_Of_Person=@Number_Of_Person,Number_Of_Bed=@Number_Of_Bed FROM Room 
  RIGHT JOIN Booking ON Booking.Hotel_Id=Room.Hotel_Id
  INNER JOIN Room_Detail ON Room_Detail.Room_Detail_Id=Room.Room_Detail_Id
  IF ( @Number_Of_Person <> @Number_Of_Bed)
  PRINT 'Not Suitable for room capacity!'
  ELSE
  PRINT 'Suitable for room capacity.'
  END
