/****** Object:  Table [dbo].[SalesTerritory]    Script Date: 2021/09/14 18:38:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SalesTerritory](
	[SalesTerritoryKey] [int] NOT NULL,
	[SalesTerritoryRegion] [nvarchar](50) NOT NULL,
	[SalesTerritoryCountry] [nvarchar](50) NOT NULL,
	[SalesTerritoryGroup] [nvarchar](50) NULL,
 CONSTRAINT [PK_SalesTerritory] PRIMARY KEY CLUSTERED 
(
	[SalesTerritoryKey] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


