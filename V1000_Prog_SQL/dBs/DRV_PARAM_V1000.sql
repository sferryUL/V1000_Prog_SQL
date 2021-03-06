USE [ElectricalApps]
GO

/****** Object:  Table [dbo].[DRV_PARAM_V1000]    Script Date: 9/7/2018 2:56:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DRV_PARAM_V1000](
	[IDX] [int] IDENTITY(1,1) NOT NULL,
	[REG_ADDR] [int] NOT NULL,
	[PARAM_NUM] [nvarchar](10) NOT NULL,
	[PARAM_NAME] [nvarchar](100) NOT NULL,
	[MULTIPLIER] [int] NULL,
	[NUM_BASE] [int] NULL,
	[UNITS] [nvarchar](10) NULL,
	[DEF_21520_ND] [int] NULL,
	[DEF_21520_HD] [int] NULL,
	[DEF_21521_ND] [int] NULL,
	[DEF_21521_HD] [int] NULL,
	[DEF_21522_ND] [int] NULL,
	[DEF_21522_HD] [int] NULL,
	[DEF_21523_ND] [int] NULL,
	[DEF_21523_HD] [int] NULL,
	[DEF_21524_ND] [int] NULL,
	[DEF_21524_HD] [int] NULL,
	[DEF_21525_ND] [int] NULL,
	[DEF_21525_HD] [int] NULL,
	[DEF_21540_ND] [int] NULL,
	[DEF_21540_HD] [int] NULL,
	[DEF_21541_ND] [int] NULL,
	[DEF_21541_HD] [int] NULL,
	[DEF_21573_ND] [int] NULL,
	[DEF_21573_HD] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DRV_PARAM_V1000] ADD  CONSTRAINT [DF_DRV_LIST_V1000_MULTIPLIER]  DEFAULT ((1)) FOR [MULTIPLIER]
GO

ALTER TABLE [dbo].[DRV_PARAM_V1000] ADD  CONSTRAINT [DF_DRV_LIST_V1000_NUM_BASE]  DEFAULT ((10)) FOR [NUM_BASE]
GO

