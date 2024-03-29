USE [MichoacanaDB]
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [Name], [Address], [Telephone]) VALUES (1, N'Raul Torres', N'Cerrada Arcos 14 Col.San Benito', 7721463462)
INSERT [dbo].[Employees] ([Id], [Name], [Address], [Telephone]) VALUES (2, N'Maria Valenzuela', N'Tomates 24 Col.Vegetales', NULL)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[PointsCards] ON 

INSERT [dbo].[PointsCards] ([id], [Balance], [ClientCode]) VALUES (9, CAST(0.0000 AS Decimal(19, 4)), 999999)
INSERT [dbo].[PointsCards] ([id], [Balance], [ClientCode]) VALUES (11, CAST(0.0000 AS Decimal(19, 4)), 100000)
SET IDENTITY_INSERT [dbo].[PointsCards] OFF
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([Id], [Name], [Email], [IdPointsCards]) VALUES (1, N'NO_NAME', N'no_name@michoacana.com', 9)
INSERT [dbo].[Clients] ([Id], [Name], [Email], [IdPointsCards]) VALUES (3, N'Antonio Valenzuela', N'antony_99@gmail.com', 11)
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [IdClient]) VALUES (1, 3)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales] ON 

INSERT [dbo].[Sales] ([Folio], [Date], [idLocation], [IdEmployee], [IdOrder], [Subtotal], [Payment], [Total]) VALUES (3, CAST(N'2023-10-18T15:18:25.650' AS DateTime), 1, 1, 1, CAST(15.0000 AS Decimal(19, 4)), CAST(17.1400 AS Decimal(19, 4)), CAST(17.1400 AS Decimal(19, 4)))
SET IDENTITY_INSERT [dbo].[Sales] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Name], [ExtraCost]) VALUES (1, N'Small', CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[Sizes] ([Id], [Name], [ExtraCost]) VALUES (2, N'Medium', CAST(5.0000 AS Decimal(19, 4)))
INSERT [dbo].[Sizes] ([Id], [Name], [ExtraCost]) VALUES (3, N'Large', CAST(10.0000 AS Decimal(19, 4)))
INSERT [dbo].[Sizes] ([Id], [Name], [ExtraCost]) VALUES (4, N'Simple', CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[Sizes] ([Id], [Name], [ExtraCost]) VALUES (5, N'Double', CAST(5.0000 AS Decimal(19, 4)))
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [BasePrice]) VALUES (1, N'Cone', CAST(15.0000 AS Decimal(19, 4)))
INSERT [dbo].[Products] ([Id], [Name], [BasePrice]) VALUES (2, N'Milkshake', CAST(20.0000 AS Decimal(19, 4)))
INSERT [dbo].[Products] ([Id], [Name], [BasePrice]) VALUES (3, N'Flavored Drink', CAST(20.0000 AS Decimal(19, 4)))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[ProductsSizes] ([IdProduct], [IdSize]) VALUES (1, 4)
INSERT [dbo].[ProductsSizes] ([IdProduct], [IdSize]) VALUES (1, 5)
INSERT [dbo].[ProductsSizes] ([IdProduct], [IdSize]) VALUES (2, 1)
INSERT [dbo].[ProductsSizes] ([IdProduct], [IdSize]) VALUES (2, 2)
INSERT [dbo].[ProductsSizes] ([IdProduct], [IdSize]) VALUES (2, 3)
INSERT [dbo].[ProductsSizes] ([IdProduct], [IdSize]) VALUES (3, 1)
INSERT [dbo].[ProductsSizes] ([IdProduct], [IdSize]) VALUES (3, 2)
INSERT [dbo].[ProductsSizes] ([IdProduct], [IdSize]) VALUES (3, 3)
GO
SET IDENTITY_INSERT [dbo].[Flavors] ON 

INSERT [dbo].[Flavors] ([Id], [Name], [ExtraCost]) VALUES (2, N'Strawberry', CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[Flavors] ([Id], [Name], [ExtraCost]) VALUES (3, N'Vainilla', CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[Flavors] ([Id], [Name], [ExtraCost]) VALUES (4, N'Chocolate', CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[Flavors] ([Id], [Name], [ExtraCost]) VALUES (5, N'Pistachio', CAST(3.0000 AS Decimal(19, 4)))
INSERT [dbo].[Flavors] ([Id], [Name], [ExtraCost]) VALUES (6, N'Bubblegum', CAST(3.0000 AS Decimal(19, 4)))
INSERT [dbo].[Flavors] ([Id], [Name], [ExtraCost]) VALUES (7, N'Oreo', CAST(5.0000 AS Decimal(19, 4)))
INSERT [dbo].[Flavors] ([Id], [Name], [ExtraCost]) VALUES (8, N'Cotton_Candy', CAST(5.0000 AS Decimal(19, 4)))
INSERT [dbo].[Flavors] ([Id], [Name], [ExtraCost]) VALUES (9, N'Coconut', CAST(3.0000 AS Decimal(19, 4)))
INSERT [dbo].[Flavors] ([Id], [Name], [ExtraCost]) VALUES (11, N'Neapolitan', CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[Flavors] ([Id], [Name], [ExtraCost]) VALUES (12, N'Horchata', CAST(3.0000 AS Decimal(19, 4)))
INSERT [dbo].[Flavors] ([Id], [Name], [ExtraCost]) VALUES (13, N'Lemon', CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[Flavors] ([Id], [Name], [ExtraCost]) VALUES (14, N'Uvola', CAST(3.0000 AS Decimal(19, 4)))
INSERT [dbo].[Flavors] ([Id], [Name], [ExtraCost]) VALUES (15, N'Root Beer', CAST(5.0000 AS Decimal(19, 4)))
SET IDENTITY_INSERT [dbo].[Flavors] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [IdOrder], [IdProduct], [IdSize], [IdFlavor], [Quantity]) VALUES (2, 1, 1, 4, 1, 3)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentOptions] ON 

INSERT [dbo].[PaymentOptions] ([Id], [Name]) VALUES (1, N'Card')
INSERT [dbo].[PaymentOptions] ([Id], [Name]) VALUES (2, N'Cash')
INSERT [dbo].[PaymentOptions] ([Id], [Name]) VALUES (4, N'Mix')
INSERT [dbo].[PaymentOptions] ([Id], [Name]) VALUES (3, N'Points')
SET IDENTITY_INSERT [dbo].[PaymentOptions] OFF
GO
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (1, 2)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (1, 3)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (1, 4)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (1, 5)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (1, 6)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (1, 7)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (1, 8)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (1, 9)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (1, 11)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (1, 13)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (2, 2)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (2, 3)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (2, 4)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (2, 7)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (3, 2)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (3, 9)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (3, 12)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (3, 13)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (3, 14)
INSERT [dbo].[ProductFlavors] ([IdProduct], [IdFlavor]) VALUES (3, 15)
GO
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([Id], [Name], [Address]) VALUES (1, N'Sucursal Solidaridad', N'Blvd.Solidaridad 24 Col.Choyal')
SET IDENTITY_INSERT [dbo].[Locations] OFF
GO
