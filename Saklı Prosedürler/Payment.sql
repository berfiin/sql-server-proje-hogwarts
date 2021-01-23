USE HotelManagement 
GO
CREATE PROCEDURE [dbo].[SP_Payment]
 @Payment_Type nvarchar(100), 
 @Amount decimal(18, 0),
 @Status nvarchar(50),
 @Payment_Date datetime,
@Added_Date datetime
 AS
 begin
 SET NOCOUNT ON;
 INSERT INTO [dbo].[Payment] VALUES( 
@Payment_Type, 
 @Amount,
 @Status,
 @Payment_Date,
@Added_Date);
select dbo.Fn_Payment_Completed2()
 end

 ---Çalýþtýrmak için
 

Declare @b int =CONVERT(INT, RAND()*100)
select @b
EXEC  [dbo].[SP_Payment]

@Payment_Type='Cash', 
 @Amount=@b,
 @Status='Active',
 @Payment_Date='01.03.2020',
@Added_Date='05.01.2020';
SELECT @b as PaymentAmount
GO