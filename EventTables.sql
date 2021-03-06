

CREATE TABLE [dbo].[Shipment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Departure] [nvarchar](100) NOT NULL,
	[Destination] [nvarchar] (100),
	[StartDate] [datetime] NOT NULL,

 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
) ON [PRIMARY]


SET IDENTITY_INSERT [dbo].[Shipment] ON 

declare @attendDate1 datetime, @attendDate2 datetime, @attendDate3 datetime
SET @attendDate1 = GETDATE()
SET @attendDate2 = GETDATE()
SET @attendDate3 = GETDATE()

Set @attendDate1 = DATEADD (mm, 1, @attendDate1)
Set @attendDate2 = DATEADD (mm, 2, @attendDate2)
Set @attendDate3 = DATEADD (mm, 3, @attendDate3)

INSERT [dbo].[Shipment] ([Id], [Title], [Description], [Departure], [Destination], [StartDate]) VALUES (1, N'Furnitures', N'Chairs, Tables', N'New York', N'England',@attendDate1)
INSERT [dbo].[Shipment] ([Id], [Title], [Description], [Departure], [Destination], [StartDate]) VALUES (2, N'Furnitures', N'Chairs, Tables', N'New York', N'England',@attendDate2)
INSERT [dbo].[Shipment] ([Id], [Title], [Description], [Departure], [Destination], [StartDate]) VALUES (3, N'Furnitures', N'Chairs, Tables', N'New York', N'England',@attendDate3)

Drop Table Shipment

