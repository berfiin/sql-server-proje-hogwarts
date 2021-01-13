-----------------Rezervasyon Procedure ---------------
USE HotelManagement 
GO

CREATE PROCEDURE [dbo].[SP_Booking]

 @Payment_Id int,
 @Hotel_Id int,
 @Customer_Id int,
@Room_Type_Id int,
@Check_In_Date datetime, 
@Check_Out_Date datetime, 
@Status nvarchar(10),
@Number_Of_Person int, 
@Number_Of_Room int,
@Added_Date datetime
 AS
 begin
 SET NOCOUNT ON;
 INSERT INTO [dbo].[Booking] VALUES( 

 @Payment_Id ,
 @Hotel_Id ,
 @Customer_Id ,
@Room_Type_Id ,
@Check_In_Date , 
@Check_Out_Date , 
@Status,
@Number_Of_Person , 
@Number_Of_Room,
@Added_Date );

 end
  ---Çalýþtýrmak için
 

DECLARE   @return_value int
EXEC  @return_value =  [dbo].[SP_Booking]
@Payment_Id ='1',
 @Hotel_Id ='3',
 @Customer_Id ='2',
@Room_Type_Id ='3',
@Check_In_Date ='02.04.2020', 
@Check_Out_Date ='01.04.2020', 
@Status ='Active',
@Number_Of_Person ='2', 
@Number_Of_Room ='1',
@Added_Date ='05.01.2021'
SELECT    'Return Value' = @return_value
GO
 
 
 
 

