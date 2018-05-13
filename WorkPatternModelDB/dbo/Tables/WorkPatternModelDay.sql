CREATE TABLE [dbo].[WorkPatternModelDay](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WPMID] [int] NOT NULL,
	[Day] [varchar](50) NOT NULL,
	[Shifts] [nvarchar](max) NULL,
	[TotalWorkingHours] [int] NOT NULL,
	[IsWorking] [bit] NOT NULL,
	[CreatedBy] [datetime] NOT NULL,
	[Created] [int] NOT NULL,
	[UpdatedBy] [datetime] NOT NULL,
	[Updated] [int] NOT NULL,
 CONSTRAINT [PK_WorkPatternModelDay] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkPatternModelDay]  WITH CHECK ADD  CONSTRAINT [FK_WorkPatternModelDay_WorkPatternModel] FOREIGN KEY([WPMID])
REFERENCES [dbo].[WorkPatternModel] ([ID])