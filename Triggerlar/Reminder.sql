USE [HotelManagement]
GO
CREATE TRIGGER TR_Reminder_Insert ON [dbo].[Booking]
    AFTER INSERT, DELETE
AS
    DECLARE @Booking_Id INT
	DECLARE @CheckInDate DATETIME

	IF EXISTS(SELECT * FROM INSERTED)
	BEGIN
	SELECT @Booking_Id = Booking_Id,@CheckInDate=Check_In_Date FROM inserted
	INSERT INTO [dbo].[Reminder]
           ([Booking_Id]
           ,[Reminder_Type]
           ,[Reminder_Detail]
           ,[Sender_Date]
           ,[Status]
           ,[Added_Date])
     VALUES
           (@Booking_Id
		   ,'Mail'
		   ,'Rezervasyon tarihi yaklaştı'
		   ,@CheckInDate-3
		   ,'Pending'
		   ,GETDATE()
           )
	END
	IF EXISTS(SELECT * FROM DELETED)
	BEGIN
	   SELECT @Booking_Id = Booking_Id FROM deleted
	   DELETE FROM [dbo].[Reminder] WHERE Booking_Id=@Booking_Id;
	END
GO