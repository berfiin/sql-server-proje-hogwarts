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
 


EXEC  [dbo].[SP_Insert_Customer]

 
@Payment_Id ='',
 @Hotel_Id ='',
 @Customer_Id ='',
@Room_Type_Id ='',
@Check_In_Date ='', 
@Check_Out_Date ='', 
@Status ='',
@Number_Of_Person ='', 
@Number_Of_Room ='',
@Added_Date =''

GO
 
 
 
 

