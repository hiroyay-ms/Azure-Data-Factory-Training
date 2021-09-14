/****** Object:  Table [dbo].[SalesOrder]    Script Date: 2021/09/14 18:38:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SalesOrder](
	[SalesOrderNumber] [nvarchar](20) NULL,
	[SalesOrderLineNumber] [tinyint] NULL,
	[SalesTerritoryKey] [int] NULL,
	[ResellerKey] [int] NULL,
	[PromotionKey] [int] NULL,
	[ProductKey] [int] NULL,
	[OrderQuantity] [smallint] NULL,
	[UnitPrice] [money] NULL,
	[TotalAmount] [money] NULL,
	[OrderDate] [datetime] NULL
) ON [PRIMARY]
GO


