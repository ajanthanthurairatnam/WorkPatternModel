CREATE TABLE [dbo].[WorkPatternModelUserActuals](
	[ID] [int] NOT NULL,
	[WPMUID] [int] NULL,
	[WorkPatternDate] [datetime] NULL,
	[WorkPatternShifts] [nvarchar](max) NULL,
	[TotalHours] [decimal](18, 4) NULL,
	[CreatedBy] [datetime] NOT NULL,
	[Created] [int] NOT NULL,
	[UpdatedBy] [datetime] NOT NULL,
	[Updated] [int] NOT NULL,
 CONSTRAINT [PK_WorkPatternModelUserActuals] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkPatternModelUserActuals]  WITH CHECK ADD  CONSTRAINT [FK_WorkPatternModelUserActuals_WorkPatternModel] FOREIGN KEY([ID])
REFERENCES [dbo].[WorkPatternModel] ([ID])