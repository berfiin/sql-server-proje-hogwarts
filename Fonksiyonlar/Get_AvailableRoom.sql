ALTER FUNCTION [dbo].[GetFreeRooms]
(
    @istenenBaslangic DateTime,
    @istenenBitis DateTime
)
RETURNS TABLE AS RETURN
(
    SELECT *
    from Room o
    where not exists 
    (
       select *
	  from Booking rzv
	  where rzv.Hotel_Id = o.Hotel_ID and
	        rzv.Check_In_Date < @istenenBitis and 
		rzv.Check_Out_Date > @istenenBaslangic
    )
)