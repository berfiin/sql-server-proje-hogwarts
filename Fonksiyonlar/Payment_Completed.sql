USE HotelManagement 
GO
Create FUNCTION [dbo].[Fn_Payment_Completed]
(     
)
RETURNS nvarchar(50)
AS
BEGIN
       DECLARE @Result nvarchar(50)
       SELECT @Result ='Payment Completed';
       RETURN @Result
END
