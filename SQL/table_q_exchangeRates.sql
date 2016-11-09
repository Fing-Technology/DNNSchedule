DROP TABLE [dbo].[q_ExchangeRates]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[q_ExchangeRates](
	[CurrencyCode] [CHAR](10) NOT NULL,
	[Rate] [DECIMAL](18, 4) NOT NULL,
	[LastUpdated] [DATETIME] NOT NULL,
 CONSTRAINT [PK_omv_ExchangeRate] PRIMARY KEY CLUSTERED 
(
	[CurrencyCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


