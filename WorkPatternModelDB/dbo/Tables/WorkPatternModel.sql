CREATE TABLE [dbo].[WorkPatternModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WorkPatternModelName] [varchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
	[UpdatedBy] [int] NOT NULL,
	[Updated] [datetime] NOT NULL,
 CONSTRAINT [PK_WorkPatternModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]