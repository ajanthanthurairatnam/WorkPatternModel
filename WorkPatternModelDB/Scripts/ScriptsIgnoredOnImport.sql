
USE [WorkPatternModel]
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserType', N'COLUMN',N'UserType'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserType', @level2type=N'COLUMN',@level2name=N'UserType'
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkPatternModelUserActuals]') AND type in (N'U'))
ALTER TABLE [dbo].[WorkPatternModelUserActuals] DROP CONSTRAINT IF EXISTS [FK_WorkPatternModelUserActuals_WorkPatternModel]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkPatternModelUser]') AND type in (N'U'))
ALTER TABLE [dbo].[WorkPatternModelUser] DROP CONSTRAINT IF EXISTS [FK_WorkPatternModelTimeLine_WorkPatternModel]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkPatternModelUser]') AND type in (N'U'))
ALTER TABLE [dbo].[WorkPatternModelUser] DROP CONSTRAINT IF EXISTS [FK_WorkPatternModelTimeLine_User]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkPatternModelDay]') AND type in (N'U'))
ALTER TABLE [dbo].[WorkPatternModelDay] DROP CONSTRAINT IF EXISTS [FK_WorkPatternModelDay_WorkPatternModel]
GO

/****** Object:  Table [dbo].[WorkPatternModelUserActuals]    Script Date: 5/13/2018 7:29:49 PM ******/
DROP TABLE IF EXISTS [dbo].[WorkPatternModelUserActuals]
GO

/****** Object:  Table [dbo].[WorkPatternModelUser]    Script Date: 5/13/2018 7:29:49 PM ******/
DROP TABLE IF EXISTS [dbo].[WorkPatternModelUser]
GO

/****** Object:  Table [dbo].[WorkPatternModelDay]    Script Date: 5/13/2018 7:29:49 PM ******/
DROP TABLE IF EXISTS [dbo].[WorkPatternModelDay]
GO

/****** Object:  Table [dbo].[WorkPatternModel]    Script Date: 5/13/2018 7:29:49 PM ******/
DROP TABLE IF EXISTS [dbo].[WorkPatternModel]
GO

/****** Object:  Table [dbo].[WorkingWeek]    Script Date: 5/13/2018 7:29:49 PM ******/
DROP TABLE IF EXISTS [dbo].[WorkingWeek]
GO

/****** Object:  Table [dbo].[UserType]    Script Date: 5/13/2018 7:29:49 PM ******/
DROP TABLE IF EXISTS [dbo].[UserType]
GO

/****** Object:  Table [dbo].[User]    Script Date: 5/13/2018 7:29:49 PM ******/
DROP TABLE IF EXISTS [dbo].[User]
GO

/****** Object:  Table [dbo].[User]    Script Date: 5/13/2018 7:29:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
BEGIN
--The following statement was imported into the database project as a schema object and named dbo.User.
--CREATE TABLE [dbo].[User](
--	[ID] [int] IDENTITY(1,1) NOT NULL,
--	[Username] [varchar](10) NOT NULL,
--	[Password] [varchar](15) NOT NULL,
--	[FirstName] [varchar](50) NOT NULL,
--	[LastName] [varchar](50) NOT NULL,
--	[CreatedBy] [int] NOT NULL,
--	[Created] [datetime] NOT NULL,
--	[UpdatedBy] [int] NOT NULL,
--	[Updated] [datetime] NOT NULL,
-- CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]

END
GO

/****** Object:  Table [dbo].[UserType]    Script Date: 5/13/2018 7:29:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserType]') AND type in (N'U'))
BEGIN
--The following statement was imported into the database project as a schema object and named dbo.UserType.
--CREATE TABLE [dbo].[UserType](
--	[ID] [int] IDENTITY(1,1) NOT NULL,
--	[UserType] [varchar](50) NOT NULL,
--	[CreatedBy] [int] NOT NULL,
--	[Created] [datetime] NOT NULL,
--	[UpdatedBy] [int] NOT NULL,
--	[Updated] [datetime] NOT NULL,
-- CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]

END
GO

/****** Object:  Table [dbo].[WorkingWeek]    Script Date: 5/13/2018 7:29:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkingWeek]') AND type in (N'U'))
BEGIN
--The following statement was imported into the database project as a schema object and named dbo.WorkingWeek.
--CREATE TABLE [dbo].[WorkingWeek](
--	[ID] [int] IDENTITY(1,1) NOT NULL,
--	[Sunday] [bit] NOT NULL,
--	[Monday] [bit] NOT NULL,
--	[Tuesday] [bit] NOT NULL,
--	[Wednesday] [bit] NOT NULL,
--	[Thursday] [bit] NOT NULL,
--	[Friday] [bit] NOT NULL,
--	[Saturday] [bit] NOT NULL,
--	[StartDay] [varchar](10) NOT NULL,
--	[CreatedBy] [datetime] NOT NULL,
--	[Created] [int] NOT NULL,
--	[UpdatedBy] [datetime] NOT NULL,
--	[Updated] [int] NOT NULL,
-- CONSTRAINT [PK_WorkingWeek] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]

END
GO

/****** Object:  Table [dbo].[WorkPatternModel]    Script Date: 5/13/2018 7:29:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkPatternModel]') AND type in (N'U'))
BEGIN
--The following statement was imported into the database project as a schema object and named dbo.WorkPatternModel.
--CREATE TABLE [dbo].[WorkPatternModel](
--	[ID] [int] IDENTITY(1,1) NOT NULL,
--	[WorkPatternModelName] [varchar](50) NOT NULL,
--	[CreatedBy] [int] NOT NULL,
--	[Created] [datetime] NOT NULL,
--	[UpdatedBy] [int] NOT NULL,
--	[Updated] [datetime] NOT NULL,
-- CONSTRAINT [PK_WorkPatternModel] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]

END
GO

/****** Object:  Table [dbo].[WorkPatternModelDay]    Script Date: 5/13/2018 7:29:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkPatternModelDay]') AND type in (N'U'))
BEGIN
--The following statement was imported into the database project as a schema object and named dbo.WorkPatternModelDay.
--CREATE TABLE [dbo].[WorkPatternModelDay](
--	[ID] [int] IDENTITY(1,1) NOT NULL,
--	[WPMID] [int] NOT NULL,
--	[Day] [varchar](50) NOT NULL,
--	[Shifts] [nvarchar](max) NULL,
--	[TotalWorkingHours] [int] NOT NULL,
--	[IsWorking] [bit] NOT NULL,
--	[CreatedBy] [datetime] NOT NULL,
--	[Created] [int] NOT NULL,
--	[UpdatedBy] [datetime] NOT NULL,
--	[Updated] [int] NOT NULL,
-- CONSTRAINT [PK_WorkPatternModelDay] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

END
GO

/****** Object:  Table [dbo].[WorkPatternModelUser]    Script Date: 5/13/2018 7:29:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkPatternModelUser]') AND type in (N'U'))
BEGIN
--The following statement was imported into the database project as a schema object and named dbo.WorkPatternModelUser.
--CREATE TABLE [dbo].[WorkPatternModelUser](
--	[ID] [int] IDENTITY(1,1) NOT NULL,
--	[UID] [int] NOT NULL,
--	[WPMID] [int] NOT NULL,
--	[StartDay] [datetime] NOT NULL,
--	[EndDay] [datetime] NOT NULL,
--	[CreatedBy] [datetime] NOT NULL,
--	[Created] [int] NOT NULL,
--	[UpdatedBy] [datetime] NOT NULL,
--	[Updated] [int] NOT NULL,
-- CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]

END
GO

/****** Object:  Table [dbo].[WorkPatternModelUserActuals]    Script Date: 5/13/2018 7:29:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkPatternModelUserActuals]') AND type in (N'U'))
BEGIN
--The following statement was imported into the database project as a schema object and named dbo.WorkPatternModelUserActuals.
--CREATE TABLE [dbo].[WorkPatternModelUserActuals](
--	[ID] [int] NOT NULL,
--	[WPMUID] [int] NULL,
--	[WorkPatternDate] [datetime] NULL,
--	[WorkPatternShifts] [nvarchar](max) NULL,
--	[TotalHours] [decimal](18, 4) NULL,
--	[CreatedBy] [datetime] NOT NULL,
--	[Created] [int] NOT NULL,
--	[UpdatedBy] [datetime] NOT NULL,
--	[Updated] [int] NOT NULL,
-- CONSTRAINT [PK_WorkPatternModelUserActuals] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

END
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkPatternModelDay_WorkPatternModel]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkPatternModelDay]'))
--The following statement was imported into the database project as a schema object and named dbo.FK_WorkPatternModelDay_WorkPatternModel.
--ALTER TABLE [dbo].[WorkPatternModelDay]  WITH CHECK ADD  CONSTRAINT [FK_WorkPatternModelDay_WorkPatternModel] FOREIGN KEY([WPMID])
--REFERENCES [dbo].[WorkPatternModel] ([ID])

GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkPatternModelDay_WorkPatternModel]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkPatternModelDay]'))
ALTER TABLE [dbo].[WorkPatternModelDay] CHECK CONSTRAINT [FK_WorkPatternModelDay_WorkPatternModel]
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkPatternModelTimeLine_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkPatternModelUser]'))
--The following statement was imported into the database project as a schema object and named dbo.FK_WorkPatternModelTimeLine_User.
--ALTER TABLE [dbo].[WorkPatternModelUser]  WITH CHECK ADD  CONSTRAINT [FK_WorkPatternModelTimeLine_User] FOREIGN KEY([UID])
--REFERENCES [dbo].[User] ([ID])

GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkPatternModelTimeLine_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkPatternModelUser]'))
ALTER TABLE [dbo].[WorkPatternModelUser] CHECK CONSTRAINT [FK_WorkPatternModelTimeLine_User]
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkPatternModelTimeLine_WorkPatternModel]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkPatternModelUser]'))
--The following statement was imported into the database project as a schema object and named dbo.FK_WorkPatternModelTimeLine_WorkPatternModel.
--ALTER TABLE [dbo].[WorkPatternModelUser]  WITH CHECK ADD  CONSTRAINT [FK_WorkPatternModelTimeLine_WorkPatternModel] FOREIGN KEY([WPMID])
--REFERENCES [dbo].[WorkPatternModel] ([ID])

GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkPatternModelTimeLine_WorkPatternModel]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkPatternModelUser]'))
ALTER TABLE [dbo].[WorkPatternModelUser] CHECK CONSTRAINT [FK_WorkPatternModelTimeLine_WorkPatternModel]
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkPatternModelUserActuals_WorkPatternModel]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkPatternModelUserActuals]'))
--The following statement was imported into the database project as a schema object and named dbo.FK_WorkPatternModelUserActuals_WorkPatternModel.
--ALTER TABLE [dbo].[WorkPatternModelUserActuals]  WITH CHECK ADD  CONSTRAINT [FK_WorkPatternModelUserActuals_WorkPatternModel] FOREIGN KEY([ID])
--REFERENCES [dbo].[WorkPatternModel] ([ID])

GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkPatternModelUserActuals_WorkPatternModel]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkPatternModelUserActuals]'))
ALTER TABLE [dbo].[WorkPatternModelUserActuals] CHECK CONSTRAINT [FK_WorkPatternModelUserActuals_WorkPatternModel]
GO

IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserType', N'COLUMN',N'UserType'))
--The following statement was imported into the database project as a schema object and named SqlColumn.dbo.UserType.UserType.MS_Description.
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Statndard User, Admin User, System Admin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserType', @level2type=N'COLUMN',@level2name=N'UserType'

GO
