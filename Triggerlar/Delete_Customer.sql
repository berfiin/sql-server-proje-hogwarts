 /* Müşteri silindiğinde onunla ilgili booking tablosundaki verilerin silindiği ve silinen tüm kayıtların 
 DELETED tablosundan ekrana yazdırıldığı TRIGGER.

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