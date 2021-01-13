------------ M��teri ekleme Procedure----------

------status,added_date exec ile �al��t�r�rken girmek gerekiyor, procedure de t�m sutunlar�n e�le�mesi laz�m.(Procedure tan�mlarken de bu sutunlar� istiyor)-----

USE HotelManagement 
GO
CREATE PROCEDURE [dbo].[SP_Insert_Customer]
 @Hotel_Id int, 
 @Room_Id int,
 @Customer_Identity_Number char(11),
 @Customer_First_Name nvarchar(100),
@Customer_Surname nvarchar(100),
@Customer_Gender nvarchar(50), 
@Customer_Nationality nvarchar(100), 
@Customer_Address nvarchar(100),
@Customer_Phone char(11), 
@Customer_Email nvarchar(100),

@Status nvarchar(15),
@Added_Date datetime
 AS
 begin
 SET NOCOUNT ON;
 INSERT INTO [dbo].[Customer] VALUES( 
 @Hotel_Id, 
 @Room_Id,
 @Customer_Identity_Number,
 @Customer_First_Name,
@Customer_Surname,
@Customer_Gender, 
@Customer_Nationality, 
@Customer_Address,
@Customer_Phone, 
@Customer_Email,
@Status,
@Added_Date);
 end

 ---�al��t�rmak i�in
 

DECLARE   @return_value int
EXEC    @return_value = [dbo].[SP_Insert_Customer]

@Hotel_Id='1', 
@Room_Id='2', 
@Customer_Identity_Number='35364215896', 
@Customer_First_Name='Berfin',
@Customer_Surname='Ayd�n',
@Customer_Gender='Female', 
@Customer_Nationality='TC', 
@Customer_Address='�zmit,Kocaeli',
@Customer_Phone='5896745652', 
@Customer_Email='berfin.aydin@gmail.com',
@Status='Active',
@Added_Date='04.01.2020'

SELECT    'Return Value' = @return_value
GO
 
 
 /* M��teri silindi�inde onunla ilgili booking tablosundaki verilerin silindi�i ve silinen t�m kay�tlar�n 
 DELETED tablosundan ekrana yazd�r�ld��� TRIGGER.Etkilenen sat�r say�s�(ROWCOUNT) 0�dan b�y�k ise silme i�lemi ba�ar�l� olmu�tur.
 Kay�t silindi�i zaman DELETED tablosunda ki Customer_Id kayd� @Customer_Id de�i�kenine atan�r*/

CREATE TRIGGER Tr_Delete_Customer
ON [dbo].[Customer]
AFTER DELETE
AS
DECLARE @Customer_Id INT
 IF @@ROWCOUNT>0
	BEGIN
		SELECT @Customer_Id=Customer_Id FROM DELETED
		SELECT * FROM DELETED
		DELETE FROM [dbo].[Booking] WHERE Customer_Id=@Customer_Id
		SELECT * FROM [dbo].[Customer]
		SELECT * FROM [dbo].[Booking]

	END


