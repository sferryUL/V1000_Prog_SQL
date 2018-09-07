USE [ElectricalApps]
GO

/****** Object:  Table [dbo].[TMPLT_MACH]    Script Date: 9/7/2018 2:57:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TMPLT_MACH](
	[IDX] [int] IDENTITY(1,1) NOT NULL,
	[CHRT_NUM] [nvarchar](50) NULL,
	[CHRT_DESC] [nvarchar](50) NULL
) ON [PRIMARY]
GO

