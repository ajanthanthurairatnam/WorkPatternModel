CREATE TABLE [dbo].[WorkPatternModelUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UID] [int] NOT NULL,
	[WPMID] [int] NOT NULL,
	[StartDay] [datetime] NOT NULL,
	[EndDay] [datetime] NOT NULL,
	[CreatedBy] [datetime] NOT NULL,
	[Created] [int] NOT NULL,
	[UpdatedBy] [datetime] NOT NULL,
	[Updated] [int] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkPatternModelUser]  WITH CHECK ADD  CONSTRAINT [FK_WorkPatternModelTimeLine_User] FOREIGN KEY([UID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[WorkPatternModelUser]  WITH CHECK ADD  CONSTRAINT [FK_WorkPatternModelTimeLine_WorkPatternModel] FOREIGN KEY([WPMID])
REFERENCES [dbo].[WorkPatternModel] ([ID])