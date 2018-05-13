CREATE TABLE [dbo].[WorkingWeek](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Sunday] [bit] NOT NULL,
	[Monday] [bit] NOT NULL,
	[Tuesday] [bit] NOT NULL,
	[Wednesday] [bit] NOT NULL,
	[Thursday] [bit] NOT NULL,
	[Friday] [bit] NOT NULL,
	[Saturday] [bit] NOT NULL,
	[StartDay] [varchar](10) NOT NULL,
	[CreatedBy] [datetime] NOT NULL,
	[Created] [int] NOT NULL,
	[UpdatedBy] [datetime] NOT NULL,
	[Updated] [int] NOT NULL,
 CONSTRAINT [PK_WorkingWeek] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]