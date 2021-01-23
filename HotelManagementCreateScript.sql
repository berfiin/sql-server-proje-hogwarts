CREATE DATABASE [HotelManagement]
GO

USE [HotelManagement]
GO
CREATE TABLE [Service]
(
	Service_Id INT IDENTITY(1,1) NOT NULL,
	Tour BIT NOT NULL,
	Indoor_Pool BIT NOT NULL,
	Outdoor_Pool BIT NOT NULL,
	Buffet_Station BIT NOT NULL,
	Breakfast BIT NOT NULL,
	Lunch BIT NOT NULL,
	Free_Car_Park BIT NOT NULL,
	Season NVARCHAR(50) NOT NULL,
	Wellness BIT NOT NULL,
	Pet_Allow BIT NOT NULL,
	Added_Date DATETIME NOT NULL DEFAULT GETDATE(),

	CONSTRAINT PK_Service PRIMARY KEY (Service_Id)
);
GO

CREATE TABLE [Hotel]
(
	Hotel_Id INT IDENTITY(1,1) NOT NULL,
	Service_Id INT NOT NULL,
	Hotel_Name NVARCHAR(100) NOT NULL,
	Number_Of_Star INT NOT NULL,
	Hotel_Type NVARCHAR(100) NOT NULL,
	[Description] NVARCHAR(250) NOT NULL,
	Price_Per_Night DECIMAL NOT NULL,
	[Status] NVARCHAR NOT NULL DEFAULT 'Active',
	Added_Date DATETIME NOT NULL DEFAULT GETDATE(),

	CONSTRAINT PK_Hotel PRIMARY KEY (Hotel_Id),
	CONSTRAINT FK_Hotel_Service FOREIGN KEY (Service_Id) REFERENCES [Service](Service_Id)
);
GO


CREATE TABLE [Room_Type]
(
	Room_Type_Id INT IDENTITY(1,1) NOT NULL,
	[Type_Name] NVARCHAR(150) NOT NULL,
	Cost DECIMAL NOT NULL,
	Added_Date DATETIME NOT NULL DEFAULT GETDATE(),

	CONSTRAINT PK_Room_Type PRIMARY KEY (Room_Type_Id)
);
GO

CREATE TABLE [Room_Detail]
(
	Room_Detail_Id INT IDENTITY(1,1) NOT NULL,
	[Type_Of_View] NVARCHAR(150) NOT NULL,
	Is_Suit BIT NOT NULL,
	Has_Balcony BIT NOT NULL,
	Wifi BIT NOT NULL,
	Smoke_Suitable BIT NOT NULL,
	Air_Condition BIT NOT NULL,
	Has_Tv BIT NOT NULL,
	Has_Mini_Bar BIT NOT NULL,
	Has_Towel BIT NOT NULL,
	Has_Hair_Dryer BIT NOT NULL,
	Number_Of_Bed INT NOT NULL,
	Size DECIMAL NOT NULL,
	Added_Date DATETIME NOT NULL DEFAULT GETDATE(),

	CONSTRAINT PK_Room_Detail PRIMARY KEY (Room_Detail_Id)
);
GO

CREATE TABLE [Room]
(
	Room_Id INT IDENTITY(1,1) NOT NULL,
	Room_Type_Id INT NOT NULL,
	Hotel_Id INT NOT NULL,
	Room_Detail_Id INT NOT NULL,
	[Description] NVARCHAR(250) NOT NULL,
	[Availability] NVARCHAR NOT NULL DEFAULT 'Available',
	Added_Date DATETIME NOT NULL DEFAULT GETDATE(),

	CONSTRAINT PK_Room PRIMARY KEY (Room_Id),
	CONSTRAINT FK_Room_Type FOREIGN KEY (Room_Type_Id) REFERENCES Room_Type(Room_Type_Id),
	CONSTRAINT FK_Room_Hotel FOREIGN KEY (Hotel_Id) REFERENCES Hotel(Hotel_Id),
	CONSTRAINT FK_Room_Detail FOREIGN KEY (Room_Detail_Id) REFERENCES Room_Detail(Room_Detail_Id)
);
GO

CREATE TABLE [Payment]
(
	Payment_Id INT IDENTITY(1,1) NOT NULL,
	Payment_Type NVARCHAR(100) NOT NULL,
	Amount DECIMAL NOT NULL,
	[Status] NVARCHAR(50) NOT NULL,
	Payment_Date DATETIME NOT NULL,
	Added_Date DATETIME NOT NULL DEFAULT GETDATE(),

	CONSTRAINT PK_Payment PRIMARY KEY (Payment_Id)
);
GO

CREATE TABLE [Department]
(
	Department_Id INT IDENTITY(1,1) NOT NULL,
	Department_Name NVARCHAR(100) NOT NULL,
	Added_Date DATETIME NOT NULL DEFAULT GETDATE(),

	CONSTRAINT PK_Department PRIMARY KEY (Department_Id)
);
GO

CREATE TABLE [Employee]
(
	Employee_Id INT IDENTITY(1,1) NOT NULL,
	Department_Id INT NOT NULL,
	Hotel_Id INT NOT NULL,
	Employee_Name NVARCHAR(100) NOT NULL,
	Employee_Surname NVARCHAR(100) NOT NULL,
	Employee_Gender NVARCHAR(50) NOT NULL,
	Employee_Date_Of_Birth DATE NOT NULL,
	Employee_Phone CHAR(11) NOT NULL,
	Employee_Email NVARCHAR(100) NOT NULL,
	Employee_Salary DECIMAL NOT NULL DEFAULT 2.825,
	Employee_Task NVARCHAR(100) ,
	Added_Date DATETIME NOT NULL DEFAULT GETDATE(),

	CONSTRAINT PK_Employee PRIMARY KEY (Employee_Id),
	CONSTRAINT FK_Employee_Department FOREIGN KEY (Department_Id) REFERENCES Department(Department_Id),
	CONSTRAINT FK_Employee_Hotel FOREIGN KEY (Hotel_Id) REFERENCES Hotel(Hotel_Id)
);
GO


CREATE TABLE [Language]
(
	Language_Id INT IDENTITY(1,1) NOT NULL,
	Employee_Id INT NOT NULL,
	Language_Name NVARCHAR(100) NOT NULL,
	Added_Date DATETIME NOT NULL DEFAULT GETDATE(),

	CONSTRAINT PK_Language PRIMARY KEY (Language_Id),
	CONSTRAINT FK_Language_Employee FOREIGN KEY (Employee_Id) REFERENCES Employee(Employee_Id)
);
GO

CREATE TABLE [Customer]
(
	Customer_Id INT IDENTITY(1,1) NOT NULL,
	Hotel_Id INT NOT NULL,
	Room_Id INT NOT NULL,
	Customer_Identity_Number CHAR(11) NOT NULL,
	Customer_First_Name NVARCHAR(100) NOT NULL,
	Customer_Surname NVARCHAR(100) NOT NULL,
	Customer_Gender NVARCHAR(50) NOT NULL,
	Customer_Nationality NVARCHAR(100) NOT NULL,
	Customer_Address NVARCHAR(100) NOT NULL,
	Customer_Phone CHAR(11) NOT NULL,
	Customer_Email NVARCHAR(100) NOT NULL,
	[Status] NVARCHAR NOT NULL DEFAULT 'Okay',
	Added_Date DATETIME NOT NULL DEFAULT GETDATE(),

	CONSTRAINT PK_Customer PRIMARY KEY (Customer_Id),
	CONSTRAINT FK_Customer_Hotel FOREIGN KEY (Hotel_Id) REFERENCES Hotel(Hotel_Id),
	CONSTRAINT FK_Customer_Room FOREIGN KEY (Room_Id) REFERENCES Room(Room_Id)
);
GO

CREATE TABLE [Booking]
(
	Booking_Id INT IDENTITY(1,1) NOT NULL,
	Payment_Id INT NOT NULL,
	Hotel_Id INT NOT NULL,
	Customer_Id INT NOT NULL,
	Room_Type_Id INT NOT NULL,
	Check_In_Date DATETIME NOT NULL,
	Check_Out_Date DATETIME NOT NULL,
	[Status] NVARCHAR(10) NOT NULL DEFAULT 'Active',
	Number_Of_Person INT NOT NULL,
	Number_Of_Room INT NOT NULL,
	Added_Date DATETIME NOT NULL DEFAULT GETDATE(),

	CONSTRAINT PK_Booking PRIMARY KEY (Booking_Id),
	CONSTRAINT FK_Booking_Payment FOREIGN KEY (Payment_Id) REFERENCES Payment(Payment_Id),
	CONSTRAINT FK_Booking_Hotel FOREIGN KEY (Hotel_Id) REFERENCES Hotel(Hotel_Id),
	CONSTRAINT FK_Booking_Customer FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id),
	CONSTRAINT FK_Booking_Room_Type FOREIGN KEY (Room_Type_Id) REFERENCES Room_Type(Room_Type_Id)
);
GO

CREATE TABLE [Reminder]
(
	Reminder_Id INT IDENTITY(1,1) NOT NULL,
	Booking_Id INT NOT NULL,
	Reminder_Type NVARCHAR(100) NOT NULL,
	Reminder_Detail NVARCHAR(300) NOT NULL,
	Sender_Date DATETIME,
	[Status] NVARCHAR NOT NULL DEFAULT 'Empty',
	Added_Date DATETIME NOT NULL DEFAULT GETDATE(),

	CONSTRAINT PK_Reminder PRIMARY KEY (Reminder_Id),
	CONSTRAINT FK_Reminder_Booking FOREIGN KEY (Booking_Id) REFERENCES Booking(Booking_Id)
);
GO
