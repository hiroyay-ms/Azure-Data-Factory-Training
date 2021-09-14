/****** Object:  Table [dbo].[Product]    Script Date: 2021/09/14 18:33:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product](
	[ProductKey] [int] NOT NULL,
	[ProductSubCategoryName] [nvarchar](50) NOT NULL,
	[ProductCategoryName] [nvarchar](50) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](15) NOT NULL,
	[SafetyStockLevel] [smallint] NULL,
	[ReorderPoint] [smallint] NULL,
	[ListPrice] [money] NULL,
	[Size] [nvarchar](50) NULL,
	[SizeRange] [nvarchar](50) NULL,
	[Weight] [float] NULL,
	[ModelName] [nvarchar](50) NULL,
	[Description] [nvarchar](400) NULL,
	[StartDate] [smalldatetime] NULL,
	[EndDate] [smalldatetime] NULL,
	[Status] [nvarchar](7) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductKey] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


