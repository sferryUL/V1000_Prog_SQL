USE [ElectricalApps]
GO

/****** Object:  Table [dbo].[MTR_DATA]    Script Date: 9/7/2018 2:56:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MTR_DATA](
	[IDX] [int] IDENTITY(1,1) NOT NULL,
	[MTR_NUM] [nvarchar](50) NOT NULL,
	[MTR_MFR] [nvarchar](50) NULL,
	[MTR_MFR_NUM] [nvarchar](100) NULL,
	[FLC_200_50] [float] NULL,
	[FLC_200_60] [float] NULL,
	[FLC_208_50] [float] NULL,
	[FLC_208_60] [float] NULL,
	[FLC_220_50] [float] NULL,
	[FLC_220_60] [float] NULL,
	[FLC_230_50] [float] NULL,
	[FLC_230_60] [float] NULL,
	[FLC_240_50] [float] NULL,
	[FLC_240_60] [float] NULL,
	[FLC_380_50] [float] NULL,
	[FLC_380_60] [float] NULL,
	[FLC_400_50] [float] NULL,
	[FLC_415_50] [float] NULL,
	[FLC_460_60] [float] NULL,
	[FLC_575_60] [float] NULL
) ON [PRIMARY]
GO

