SET IDENTITY_INSERT [dbo].[Department] ON 
GO
INSERT [dbo].[Department] ([Department_Id], [Department_Name], [Added_Date]) VALUES (1, N'Front Office Department', CAST(N'2021-01-03T22:07:59.447' AS DateTime))
GO
INSERT [dbo].[Department] ([Department_Id], [Department_Name], [Added_Date]) VALUES (2, N'Food and Beverage Department', CAST(N'2021-01-03T22:08:18.630' AS DateTime))
GO
INSERT [dbo].[Department] ([Department_Id], [Department_Name], [Added_Date]) VALUES (3, N'Housekeeping Department', CAST(N'2021-01-03T22:08:29.663' AS DateTime))
GO
INSERT [dbo].[Department] ([Department_Id], [Department_Name], [Added_Date]) VALUES (4, N'Marketing Department', CAST(N'2021-01-03T22:08:48.873' AS DateTime))
GO
INSERT [dbo].[Department] ([Department_Id], [Department_Name], [Added_Date]) VALUES (5, N'Accounting Department', CAST(N'2021-01-03T22:09:01.330' AS DateTime))
GO
INSERT [dbo].[Department] ([Department_Id], [Department_Name], [Added_Date]) VALUES (6, N'Human Resources Department', CAST(N'2021-01-03T22:09:11.423' AS DateTime))
GO
INSERT [dbo].[Department] ([Department_Id], [Department_Name], [Added_Date]) VALUES (7, N'Security Department', CAST(N'2021-01-03T22:09:23.510' AS DateTime))
GO
INSERT [dbo].[Department] ([Department_Id], [Department_Name], [Added_Date]) VALUES (8, N'Computing Department', CAST(N'2021-01-03T22:09:33.787' AS DateTime))
GO
INSERT [dbo].[Department] ([Department_Id], [Department_Name], [Added_Date]) VALUES (9, N'Technical Service Department', CAST(N'2021-01-03T22:09:50.557' AS DateTime))
GO
INSERT [dbo].[Department] ([Department_Id], [Department_Name], [Added_Date]) VALUES (10, N'Staff Department', CAST(N'2021-01-03T22:10:01.163' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 
GO
INSERT [dbo].[Employee] ([Employee_Id], [Department_Id], [Hotel_Id], [Employee_Name], [Employee_Surname], [Employee_Gender], [Employee_Date_Of_Birth], [Employee_Phone], [Employee_Email], [Employee_Salary], [Employee_Task], [Added_Date]) VALUES (1, 1, 9, N'ATA', N'OZTURK', N'MALE', CAST(N'1995-04-01' AS Date), N'05446935874', N'atarobot@gmail.com', CAST(3300 AS Decimal(18, 0)), N'258', CAST(N'2021-01-03T22:19:51.117' AS DateTime))
GO
INSERT [dbo].[Employee] ([Employee_Id], [Department_Id], [Hotel_Id], [Employee_Name], [Employee_Surname], [Employee_Gender], [Employee_Date_Of_Birth], [Employee_Phone], [Employee_Email], [Employee_Salary], [Employee_Task], [Added_Date]) VALUES (2, 2, 10, N'GEORGE', N'HILL', N'MALE', CAST(N'1976-09-01' AS Date), N'9856236985 ', N'g.hill@outlok.com', CAST(4500 AS Decimal(18, 0)), N'433', CAST(N'2021-01-03T22:21:36.720' AS DateTime))
GO
INSERT [dbo].[Employee] ([Employee_Id], [Department_Id], [Hotel_Id], [Employee_Name], [Employee_Surname], [Employee_Gender], [Employee_Date_Of_Birth], [Employee_Phone], [Employee_Email], [Employee_Salary], [Employee_Task], [Added_Date]) VALUES (3, 3, 11, N'MARGOROT', N'EVIL', N'FEMALE', CAST(N'1986-02-22' AS Date), N'9856784329 ', N'margotottahill@yandex.com', CAST(5000 AS Decimal(18, 0)), N'469', CAST(N'2021-01-03T22:23:31.003' AS DateTime))
GO
INSERT [dbo].[Employee] ([Employee_Id], [Department_Id], [Hotel_Id], [Employee_Name], [Employee_Surname], [Employee_Gender], [Employee_Date_Of_Birth], [Employee_Phone], [Employee_Email], [Employee_Salary], [Employee_Task], [Added_Date]) VALUES (4, 4, 12, N'RECEP', N'BAYRAM', N'MALE', CAST(N'1994-11-02' AS Date), N'5466983278 ', N'r.bayram@hotmail.com', CAST(2890 AS Decimal(18, 0)), N'257', CAST(N'2021-01-03T22:24:43.153' AS DateTime))
GO
INSERT [dbo].[Employee] ([Employee_Id], [Department_Id], [Hotel_Id], [Employee_Name], [Employee_Surname], [Employee_Gender], [Employee_Date_Of_Birth], [Employee_Phone], [Employee_Email], [Employee_Salary], [Employee_Task], [Added_Date]) VALUES (5, 5, 13, N'KYLE', N'JOHNSON', N'FEMALE', CAST(N'2000-12-06' AS Date), N'9563248759 ', N'kylee.jhsn@gmail.com', CAST(2500 AS Decimal(18, 0)), N'187', CAST(N'2021-01-03T22:26:31.757' AS DateTime))
GO
INSERT [dbo].[Employee] ([Employee_Id], [Department_Id], [Hotel_Id], [Employee_Name], [Employee_Surname], [Employee_Gender], [Employee_Date_Of_Birth], [Employee_Phone], [Employee_Email], [Employee_Salary], [Employee_Task], [Added_Date]) VALUES (6, 6, 14, N'EMINE', N'ALTUN', N'FEMALE', CAST(N'1972-05-30' AS Date), N'5466988523 ', N'eminee._altunn@hotmail.com', CAST(5500 AS Decimal(18, 0)), N'439', CAST(N'2021-01-03T22:42:05.163' AS DateTime))
GO
INSERT [dbo].[Employee] ([Employee_Id], [Department_Id], [Hotel_Id], [Employee_Name], [Employee_Surname], [Employee_Gender], [Employee_Date_Of_Birth], [Employee_Phone], [Employee_Email], [Employee_Salary], [Employee_Task], [Added_Date]) VALUES (7, 7, 16, N'BORIS', N'JOHSON', N'MALE', CAST(N'1965-07-19' AS Date), N'9658742654 ', N'b.jjohsonn@msn.com', CAST(9200 AS Decimal(18, 0)), N'1017', CAST(N'2021-01-03T22:43:15.780' AS DateTime))
GO
INSERT [dbo].[Employee] ([Employee_Id], [Department_Id], [Hotel_Id], [Employee_Name], [Employee_Surname], [Employee_Gender], [Employee_Date_Of_Birth], [Employee_Phone], [Employee_Email], [Employee_Salary], [Employee_Task], [Added_Date]) VALUES (8, 8, 17, N'ALFRED', N'BUSH', N'MALE', CAST(N'1997-07-02' AS Date), N'5426478965 ', N'a.bush01@gmail.com', CAST(3600 AS Decimal(18, 0)), N'296', CAST(N'2021-01-03T22:44:24.060' AS DateTime))
GO
INSERT [dbo].[Employee] ([Employee_Id], [Department_Id], [Hotel_Id], [Employee_Name], [Employee_Surname], [Employee_Gender], [Employee_Date_Of_Birth], [Employee_Phone], [Employee_Email], [Employee_Salary], [Employee_Task], [Added_Date]) VALUES (9, 9, 20, N'CLARA', N'TMPHSON', N'FEMALE', CAST(N'1990-10-16' AS Date), N'9687412563 ', N'clara-jhnsn@yandex.com', CAST(4800 AS Decimal(18, 0)), N'302', CAST(N'2021-01-03T22:46:11.783' AS DateTime))
GO
INSERT [dbo].[Employee] ([Employee_Id], [Department_Id], [Hotel_Id], [Employee_Name], [Employee_Surname], [Employee_Gender], [Employee_Date_Of_Birth], [Employee_Phone], [Employee_Email], [Employee_Salary], [Employee_Task], [Added_Date]) VALUES (10, 10, 21, N'EMMY', N'WATSON', N'FEMALE', CAST(N'1996-09-02' AS Date), N'9863478657 ', N'emmy_watsonn01@hotmail.com', CAST(5200 AS Decimal(18, 0)), N'463', CAST(N'2021-01-03T22:47:27.330' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Hotel] ON 
GO
INSERT [dbo].[Hotel] ([Hotel_Id], [Service_Id], [Hotel_Name], [Number_Of_Star], [Hotel_Type], [Description], [Price_Per_Night], [Status], [Added_Date]) VALUES (9, 6, N'KUSADASI HOTEL', 5, N'LUXURY', N'enjoy the comfort', CAST(400 AS Decimal(18, 0)), N'ACTIVE', CAST(N'2021-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hotel] ([Hotel_Id], [Service_Id], [Hotel_Name], [Number_Of_Star], [Hotel_Type], [Description], [Price_Per_Night], [Status], [Added_Date]) VALUES (10, 7, N'SHEROTON', 5, N'RESORT', N'SAFETY COMFORT YOURS', CAST(220 AS Decimal(18, 0)), N'ACTIVE', CAST(N'2021-01-03T18:48:11.760' AS DateTime))
GO
INSERT [dbo].[Hotel] ([Hotel_Id], [Service_Id], [Hotel_Name], [Number_Of_Star], [Hotel_Type], [Description], [Price_Per_Night], [Status], [Added_Date]) VALUES (11, 8, N'NORTH POINT', 4, N'MOTEL', N'FEEL YOU AT HOME!', CAST(150 AS Decimal(18, 0)), N'DEACTIVE', CAST(N'2021-01-03T18:52:59.550' AS DateTime))
GO
INSERT [dbo].[Hotel] ([Hotel_Id], [Service_Id], [Hotel_Name], [Number_Of_Star], [Hotel_Type], [Description], [Price_Per_Night], [Status], [Added_Date]) VALUES (12, 9, N'Hampton By Hilton', 4, N'LUXURY', N'If the facility cannot provide the required occupancy, it may apply changes within the concept or concept.', CAST(180 AS Decimal(18, 0)), N'DEACTIVE', CAST(N'2021-01-03T18:57:08.370' AS DateTime))
GO
INSERT [dbo].[Hotel] ([Hotel_Id], [Service_Id], [Hotel_Name], [Number_Of_Star], [Hotel_Type], [Description], [Price_Per_Night], [Status], [Added_Date]) VALUES (13, 10, N'My House Hotel', 3, N'MOTEL', N'Our hotel is within walking distance to the city center, shopping centers and museums.', CAST(135 AS Decimal(18, 0)), N'ACTIVE', CAST(N'2021-01-03T18:59:24.383' AS DateTime))
GO
INSERT [dbo].[Hotel] ([Hotel_Id], [Service_Id], [Hotel_Name], [Number_Of_Star], [Hotel_Type], [Description], [Price_Per_Night], [Status], [Added_Date]) VALUES (14, 11, N'Hilas Thermal Resort Spa Aquapark
', 4, N'RESORT', N'Our hotel serves a rich open buffet breakfast and dinner.', CAST(200 AS Decimal(18, 0)), N'DEACTIVE', CAST(N'2021-01-03T19:01:34.240' AS DateTime))
GO
INSERT [dbo].[Hotel] ([Hotel_Id], [Service_Id], [Hotel_Name], [Number_Of_Star], [Hotel_Type], [Description], [Price_Per_Night], [Status], [Added_Date]) VALUES (16, 12, N'Simisso Hotel
', 4, N'HOTEL', N'We were selected as the most reputable tourism and travel brand of the year', CAST(240 AS Decimal(18, 0)), N'ACTIVE', CAST(N'2021-01-03T19:03:24.613' AS DateTime))
GO
INSERT [dbo].[Hotel] ([Hotel_Id], [Service_Id], [Hotel_Name], [Number_Of_Star], [Hotel_Type], [Description], [Price_Per_Night], [Status], [Added_Date]) VALUES (17, 13, N'Otel Moonrose', 3, N'OTEL', N'-', CAST(110 AS Decimal(18, 0)), N'ACTIVE', CAST(N'2021-01-03T19:04:53.790' AS DateTime))
GO
INSERT [dbo].[Hotel] ([Hotel_Id], [Service_Id], [Hotel_Name], [Number_Of_Star], [Hotel_Type], [Description], [Price_Per_Night], [Status], [Added_Date]) VALUES (20, 14, N'Samlife Apart
', 2, N'APART', N'Samlife Apart is located in the city center. The hotel is 25 km from the airport and 0 km from the city center. The facility serves only in room concept.', CAST(85 AS Decimal(18, 0)), N'ACTIVE', CAST(N'2021-01-03T19:08:03.277' AS DateTime))
GO
INSERT [dbo].[Hotel] ([Hotel_Id], [Service_Id], [Hotel_Name], [Number_Of_Star], [Hotel_Type], [Description], [Price_Per_Night], [Status], [Added_Date]) VALUES (21, 15, N'King Life Suite', 3, N'SUITE', N'In terms of location, it is an excellent hotel close to the sea and transportation.', CAST(167 AS Decimal(18, 0)), N'ACTIVE', CAST(N'2021-01-03T19:10:01.900' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Hotel] OFF
GO
SET IDENTITY_INSERT [dbo].[Language] ON 
GO
INSERT [dbo].[Language] ([Language_Id], [Employee_Id], [Language_Name], [Added_Date]) VALUES (2, 1, N'TURKISH', CAST(N'2021-01-03T22:47:48.690' AS DateTime))
GO
INSERT [dbo].[Language] ([Language_Id], [Employee_Id], [Language_Name], [Added_Date]) VALUES (3, 2, N'SPANISH', CAST(N'2021-01-03T22:47:56.857' AS DateTime))
GO
INSERT [dbo].[Language] ([Language_Id], [Employee_Id], [Language_Name], [Added_Date]) VALUES (4, 3, N'ENGLISH', CAST(N'2021-01-03T22:48:07.033' AS DateTime))
GO
INSERT [dbo].[Language] ([Language_Id], [Employee_Id], [Language_Name], [Added_Date]) VALUES (6, 4, N'TURKISH', CAST(N'2021-01-03T22:48:59.320' AS DateTime))
GO
INSERT [dbo].[Language] ([Language_Id], [Employee_Id], [Language_Name], [Added_Date]) VALUES (7, 5, N'FRENCH', CAST(N'2021-01-03T22:49:13.220' AS DateTime))
GO
INSERT [dbo].[Language] ([Language_Id], [Employee_Id], [Language_Name], [Added_Date]) VALUES (8, 6, N'TURKISH', CAST(N'2021-01-03T22:49:26.537' AS DateTime))
GO
INSERT [dbo].[Language] ([Language_Id], [Employee_Id], [Language_Name], [Added_Date]) VALUES (9, 7, N'RUSSIAN', CAST(N'2021-01-03T22:49:43.290' AS DateTime))
GO
INSERT [dbo].[Language] ([Language_Id], [Employee_Id], [Language_Name], [Added_Date]) VALUES (10, 8, N'GERMAN', CAST(N'2021-01-03T22:50:18.643' AS DateTime))
GO
INSERT [dbo].[Language] ([Language_Id], [Employee_Id], [Language_Name], [Added_Date]) VALUES (11, 9, N'ITALIAN', CAST(N'2021-01-03T22:51:11.580' AS DateTime))
GO
INSERT [dbo].[Language] ([Language_Id], [Employee_Id], [Language_Name], [Added_Date]) VALUES (12, 10, N'GREEK', CAST(N'2021-01-03T22:51:23.223' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Language] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 
GO
INSERT [dbo].[Room] ([Room_Id], [Room_Type_Id], [Hotel_Id], [Room_Detail_Id], [Description], [Availability], [Added_Date]) VALUES (2, 1, 9, 7, N'In our hotel, our guests stay in Bed + Breakfast concept. In addition, upon request of our guests, we offer room only, half board and full board accommodation alternatives in groups.', N'Y', CAST(N'2021-01-03T21:42:59.467' AS DateTime))
GO
INSERT [dbo].[Room] ([Room_Id], [Room_Type_Id], [Hotel_Id], [Room_Detail_Id], [Description], [Availability], [Added_Date]) VALUES (3, 2, 10, 8, N'The facility serves only in room concept.', N'Y', CAST(N'2021-01-03T21:44:23.663' AS DateTime))
GO
INSERT [dbo].[Room] ([Room_Id], [Room_Type_Id], [Hotel_Id], [Room_Detail_Id], [Description], [Availability], [Added_Date]) VALUES (4, 3, 11, 9, N'All food and beverages, except breakfast, are charged extra.', N'Y', CAST(N'2021-01-03T21:45:56.620' AS DateTime))
GO
INSERT [dbo].[Room] ([Room_Id], [Room_Type_Id], [Hotel_Id], [Room_Detail_Id], [Description], [Availability], [Added_Date]) VALUES (5, 4, 12, 10, N'All food and drinks taken except for the morning breakfast are charged.', N'Y', CAST(N'2021-01-03T21:47:41.530' AS DateTime))
GO
INSERT [dbo].[Room] ([Room_Id], [Room_Type_Id], [Hotel_Id], [Room_Detail_Id], [Description], [Availability], [Added_Date]) VALUES (10, 5, 13, 1, N'Food and beverages other than breakfast are extra.', N'Y', CAST(N'2021-01-03T21:51:14.733' AS DateTime))
GO
INSERT [dbo].[Room] ([Room_Id], [Room_Type_Id], [Hotel_Id], [Room_Detail_Id], [Description], [Availability], [Added_Date]) VALUES (11, 6, 14, 2, N'Room Only', N'N', CAST(N'2021-01-03T21:52:27.143' AS DateTime))
GO
INSERT [dbo].[Room] ([Room_Id], [Room_Type_Id], [Hotel_Id], [Room_Detail_Id], [Description], [Availability], [Added_Date]) VALUES (15, 7, 16, 3, N'The hotel serves in bed and breakfast concept. You can take advantage of the market services in the hotel.

You can have your meals in the indoor restaurant in the hotel.', N'Y', CAST(N'2021-01-03T21:56:17.530' AS DateTime))
GO
INSERT [dbo].[Room] ([Room_Id], [Room_Type_Id], [Hotel_Id], [Room_Detail_Id], [Description], [Availability], [Added_Date]) VALUES (16, 8, 17, 4, N'NOT DESCRÝPTION', N'N', CAST(N'2021-01-03T21:56:54.933' AS DateTime))
GO
INSERT [dbo].[Room] ([Room_Id], [Room_Type_Id], [Hotel_Id], [Room_Detail_Id], [Description], [Availability], [Added_Date]) VALUES (17, 9, 20, 5, N'TV and telephone that you can use during your stay are available in standard rooms. You can use the market services in the facility according to your needs.', N'Y', CAST(N'2021-01-03T22:00:58.487' AS DateTime))
GO
INSERT [dbo].[Room] ([Room_Id], [Room_Type_Id], [Hotel_Id], [Room_Detail_Id], [Description], [Availability], [Added_Date]) VALUES (21, 9, 21, 6, N'We work as a bed and breakfast but we have a paid alacarte restaurant.

Breakfast: 08.00 - 10.00', N'Y', CAST(N'2021-01-03T22:03:44.837' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
SET IDENTITY_INSERT [dbo].[Room_Detail] ON 
GO
INSERT [dbo].[Room_Detail] ([Room_Detail_Id], [Type_Of_View], [Is_Suit], [Has_Balcony], [Wifi], [Smoke_Suitable], [Air_Condition], [Has_Tv], [Has_Mini_Bar], [Has_Towel], [Has_Hair_Dryer], [Number_Of_Bed], [Size], [Added_Date]) VALUES (1, N'View of Sea', 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, CAST(130 AS Decimal(18, 0)), CAST(N'2021-01-03T19:33:51.573' AS DateTime))
GO
INSERT [dbo].[Room_Detail] ([Room_Detail_Id], [Type_Of_View], [Is_Suit], [Has_Balcony], [Wifi], [Smoke_Suitable], [Air_Condition], [Has_Tv], [Has_Mini_Bar], [Has_Towel], [Has_Hair_Dryer], [Number_Of_Bed], [Size], [Added_Date]) VALUES (2, N'Not View', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, CAST(80 AS Decimal(18, 0)), CAST(N'2021-01-03T19:35:41.717' AS DateTime))
GO
INSERT [dbo].[Room_Detail] ([Room_Detail_Id], [Type_Of_View], [Is_Suit], [Has_Balcony], [Wifi], [Smoke_Suitable], [Air_Condition], [Has_Tv], [Has_Mini_Bar], [Has_Towel], [Has_Hair_Dryer], [Number_Of_Bed], [Size], [Added_Date]) VALUES (3, N'View of Pool', 1, 1, 1, 0, 1, 1, 1, 1, 1, 4, CAST(160 AS Decimal(18, 0)), CAST(N'2021-01-03T19:36:41.410' AS DateTime))
GO
INSERT [dbo].[Room_Detail] ([Room_Detail_Id], [Type_Of_View], [Is_Suit], [Has_Balcony], [Wifi], [Smoke_Suitable], [Air_Condition], [Has_Tv], [Has_Mini_Bar], [Has_Towel], [Has_Hair_Dryer], [Number_Of_Bed], [Size], [Added_Date]) VALUES (4, N'View of Montains', 0, 0, 0, 1, 0, 0, 0, 1, 1, 3, CAST(100 AS Decimal(18, 0)), CAST(N'2021-01-03T19:37:38.000' AS DateTime))
GO
INSERT [dbo].[Room_Detail] ([Room_Detail_Id], [Type_Of_View], [Is_Suit], [Has_Balcony], [Wifi], [Smoke_Suitable], [Air_Condition], [Has_Tv], [Has_Mini_Bar], [Has_Towel], [Has_Hair_Dryer], [Number_Of_Bed], [Size], [Added_Date]) VALUES (5, N'ZERO VIEW TO THE SEA', 1, 1, 1, 0, 1, 1, 1, 1, 1, 2, CAST(200 AS Decimal(18, 0)), CAST(N'2021-01-03T19:38:55.700' AS DateTime))
GO
INSERT [dbo].[Room_Detail] ([Room_Detail_Id], [Type_Of_View], [Is_Suit], [Has_Balcony], [Wifi], [Smoke_Suitable], [Air_Condition], [Has_Tv], [Has_Mini_Bar], [Has_Towel], [Has_Hair_Dryer], [Number_Of_Bed], [Size], [Added_Date]) VALUES (6, N'CITY VIEW', 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, CAST(75 AS Decimal(18, 0)), CAST(N'2021-01-03T19:40:15.250' AS DateTime))
GO
INSERT [dbo].[Room_Detail] ([Room_Detail_Id], [Type_Of_View], [Is_Suit], [Has_Balcony], [Wifi], [Smoke_Suitable], [Air_Condition], [Has_Tv], [Has_Mini_Bar], [Has_Towel], [Has_Hair_Dryer], [Number_Of_Bed], [Size], [Added_Date]) VALUES (7, N'Not View', 0, 0, 0, 1, 0, 0, 0, 0, 1, 6, CAST(180 AS Decimal(18, 0)), CAST(N'2021-01-03T19:41:52.303' AS DateTime))
GO
INSERT [dbo].[Room_Detail] ([Room_Detail_Id], [Type_Of_View], [Is_Suit], [Has_Balcony], [Wifi], [Smoke_Suitable], [Air_Condition], [Has_Tv], [Has_Mini_Bar], [Has_Towel], [Has_Hair_Dryer], [Number_Of_Bed], [Size], [Added_Date]) VALUES (8, N'SCENIC', 1, 1, 1, 0, 1, 0, 0, 1, 1, 2, CAST(228 AS Decimal(18, 0)), CAST(N'2021-01-03T19:43:55.367' AS DateTime))
GO
INSERT [dbo].[Room_Detail] ([Room_Detail_Id], [Type_Of_View], [Is_Suit], [Has_Balcony], [Wifi], [Smoke_Suitable], [Air_Condition], [Has_Tv], [Has_Mini_Bar], [Has_Towel], [Has_Hair_Dryer], [Number_Of_Bed], [Size], [Added_Date]) VALUES (9, N'BOSPHORUS VIEW', 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, CAST(220 AS Decimal(18, 0)), CAST(N'2021-01-03T19:47:22.313' AS DateTime))
GO
INSERT [dbo].[Room_Detail] ([Room_Detail_Id], [Type_Of_View], [Is_Suit], [Has_Balcony], [Wifi], [Smoke_Suitable], [Air_Condition], [Has_Tv], [Has_Mini_Bar], [Has_Towel], [Has_Hair_Dryer], [Number_Of_Bed], [Size], [Added_Date]) VALUES (10, N'Lake View', 0, 1, 0, 1, 0, 0, 0, 1, 0, 5, CAST(290 AS Decimal(18, 0)), CAST(N'2021-01-03T19:49:03.750' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Room_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[Room_Type] ON 
GO
INSERT [dbo].[Room_Type] ([Room_Type_Id], [Type_Name], [Cost], [Added_Date]) VALUES (1, N'Single room', CAST(85 AS Decimal(18, 0)), CAST(N'2021-01-03T19:23:31.873' AS DateTime))
GO
INSERT [dbo].[Room_Type] ([Room_Type_Id], [Type_Name], [Cost], [Added_Date]) VALUES (2, N'Double room', CAST(130 AS Decimal(18, 0)), CAST(N'2021-01-03T19:23:58.250' AS DateTime))
GO
INSERT [dbo].[Room_Type] ([Room_Type_Id], [Type_Name], [Cost], [Added_Date]) VALUES (3, N'3 Person Room', CAST(180 AS Decimal(18, 0)), CAST(N'2021-01-03T19:24:16.707' AS DateTime))
GO
INSERT [dbo].[Room_Type] ([Room_Type_Id], [Type_Name], [Cost], [Added_Date]) VALUES (4, N'quadruple room', CAST(240 AS Decimal(18, 0)), CAST(N'2021-01-03T19:24:46.293' AS DateTime))
GO
INSERT [dbo].[Room_Type] ([Room_Type_Id], [Type_Name], [Cost], [Added_Date]) VALUES (5, N'5 PERSON ROOM', CAST(100 AS Decimal(18, 0)), CAST(N'2021-01-03T19:25:16.663' AS DateTime))
GO
INSERT [dbo].[Room_Type] ([Room_Type_Id], [Type_Name], [Cost], [Added_Date]) VALUES (6, N'Dormitory style room', CAST(150 AS Decimal(18, 0)), CAST(N'2021-01-03T19:25:40.293' AS DateTime))
GO
INSERT [dbo].[Room_Type] ([Room_Type_Id], [Type_Name], [Cost], [Added_Date]) VALUES (7, N'Suite Room', CAST(340 AS Decimal(18, 0)), CAST(N'2021-01-03T19:26:33.187' AS DateTime))
GO
INSERT [dbo].[Room_Type] ([Room_Type_Id], [Type_Name], [Cost], [Added_Date]) VALUES (8, N'Standard double room', CAST(200 AS Decimal(18, 0)), CAST(N'2021-01-03T19:28:41.420' AS DateTime))
GO
INSERT [dbo].[Room_Type] ([Room_Type_Id], [Type_Name], [Cost], [Added_Date]) VALUES (9, N'Twin for Sole Use', CAST(260 AS Decimal(18, 0)), CAST(N'2021-01-03T19:29:14.373' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Room_Type] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 
GO
INSERT [dbo].[Service] ([Service_Id], [Tour], [Indoor_Pool], [Outdoor_Pool], [Buffet_Station], [Breakfast], [Lunch], [Free_Car_Park], [Season], [Wellness], [Pet_Allow], [Added_Date]) VALUES (6, 0, 0, 1, 0, 1, 0, 1, N'SPRING', 0, 0, CAST(N'2021-01-03T18:28:30.043' AS DateTime))
GO
INSERT [dbo].[Service] ([Service_Id], [Tour], [Indoor_Pool], [Outdoor_Pool], [Buffet_Station], [Breakfast], [Lunch], [Free_Car_Park], [Season], [Wellness], [Pet_Allow], [Added_Date]) VALUES (7, 0, 0, 1, 0, 1, 0, 1, N'WINTER', 1, 1, CAST(N'2021-01-03T18:28:56.583' AS DateTime))
GO
INSERT [dbo].[Service] ([Service_Id], [Tour], [Indoor_Pool], [Outdoor_Pool], [Buffet_Station], [Breakfast], [Lunch], [Free_Car_Park], [Season], [Wellness], [Pet_Allow], [Added_Date]) VALUES (8, 1, 0, 1, 0, 1, 0, 0, N'WINTER', 1, 1, CAST(N'2021-01-03T18:29:13.240' AS DateTime))
GO
INSERT [dbo].[Service] ([Service_Id], [Tour], [Indoor_Pool], [Outdoor_Pool], [Buffet_Station], [Breakfast], [Lunch], [Free_Car_Park], [Season], [Wellness], [Pet_Allow], [Added_Date]) VALUES (9, 1, 0, 1, 0, 0, 1, 1, N'AUTUMN', 0, 1, CAST(N'2021-01-03T18:30:02.000' AS DateTime))
GO
INSERT [dbo].[Service] ([Service_Id], [Tour], [Indoor_Pool], [Outdoor_Pool], [Buffet_Station], [Breakfast], [Lunch], [Free_Car_Park], [Season], [Wellness], [Pet_Allow], [Added_Date]) VALUES (10, 1, 0, 0, 0, 1, 0, 1, N'AUTUMN', 0, 1, CAST(N'2021-01-03T18:30:50.303' AS DateTime))
GO
INSERT [dbo].[Service] ([Service_Id], [Tour], [Indoor_Pool], [Outdoor_Pool], [Buffet_Station], [Breakfast], [Lunch], [Free_Car_Park], [Season], [Wellness], [Pet_Allow], [Added_Date]) VALUES (11, 1, 1, 1, 0, 1, 0, 1, N'AUTUMN', 0, 1, CAST(N'2021-01-03T18:30:59.633' AS DateTime))
GO
INSERT [dbo].[Service] ([Service_Id], [Tour], [Indoor_Pool], [Outdoor_Pool], [Buffet_Station], [Breakfast], [Lunch], [Free_Car_Park], [Season], [Wellness], [Pet_Allow], [Added_Date]) VALUES (12, 1, 0, 0, 0, 1, 0, 1, N'SUMMER', 1, 1, CAST(N'2021-01-03T18:31:20.020' AS DateTime))
GO
INSERT [dbo].[Service] ([Service_Id], [Tour], [Indoor_Pool], [Outdoor_Pool], [Buffet_Station], [Breakfast], [Lunch], [Free_Car_Park], [Season], [Wellness], [Pet_Allow], [Added_Date]) VALUES (13, 1, 1, 1, 1, 1, 0, 1, N'SUMMER', 1, 1, CAST(N'2021-01-03T18:31:39.670' AS DateTime))
GO
INSERT [dbo].[Service] ([Service_Id], [Tour], [Indoor_Pool], [Outdoor_Pool], [Buffet_Station], [Breakfast], [Lunch], [Free_Car_Park], [Season], [Wellness], [Pet_Allow], [Added_Date]) VALUES (14, 1, 1, 1, 1, 1, 0, 1, N'AUTUMN', 1, 1, CAST(N'2021-01-03T18:31:53.033' AS DateTime))
GO
INSERT [dbo].[Service] ([Service_Id], [Tour], [Indoor_Pool], [Outdoor_Pool], [Buffet_Station], [Breakfast], [Lunch], [Free_Car_Park], [Season], [Wellness], [Pet_Allow], [Added_Date]) VALUES (15, 0, 0, 0, 0, 0, 0, 1, N'SPRING', 0, 1, CAST(N'2021-01-03T18:32:21.520' AS DateTime))
GO