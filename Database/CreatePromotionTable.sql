/****** Object:  Table [dbo].[Promotion]    Script Date: 2021/09/14 18:36:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Promotion](
	[PromotionKey] [int] NOT NULL,
	[PromotionName] [nvarchar](255) NULL,
	[DiscountPct] [float] NULL,
	[PromotionType] [nvarchar](50) NULL,
	[PromotionCategory] [nvarchar](50) NULL,
	[StartDate] [smalldatetime] NOT NULL,
	[EndDate] [smalldatetime] NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[PromotionKey] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


