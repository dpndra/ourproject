/****** Object:  Table [dbo].[ProfileCmtRateVerification]    Script Date: 6/16/2014 5:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfileCmtRateVerification](
	[VerifyID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[UserProfileID] [int] NOT NULL,
	[CmtID] [int] NOT NULL,
	[RateID] [int] NOT NULL,
	[VerifyDateTime] [datetime] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProfileCmtRateVerification] PRIMARY KEY CLUSTERED 
(
	[VerifyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RegisterUsers]    Script Date: 6/16/2014 5:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisterUsers](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserCategoryID] [int] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[UserEmailAddress] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
	[IsActive] [nvarchar](50) NOT NULL,
	[DeletedDateTime] [datetime] NULL,
 CONSTRAINT [PK_RegisterUsers] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RegUserVerification]    Script Date: 6/16/2014 5:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegUserVerification](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[VerificationStatus] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RegUserVerification] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SiteArticle]    Script Date: 6/16/2014 5:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteArticle](
	[ArticleID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Source] [nvarchar](50) NOT NULL,
	[WrittenDateTime] [datetime] NOT NULL,
	[IsActive] [nvarchar](50) NOT NULL,
	[DeletedDateTime] [datetime] NULL,
	[ImgPathSmall] [nvarchar](50) NOT NULL,
	[ImgPathMedium] [nvarchar](50) NOT NULL,
	[ImgPathLarge] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SiteArticle] PRIMARY KEY CLUSTERED 
(
	[ArticleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpecialistDescription]    Script Date: 6/16/2014 5:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialistDescription](
	[SpecialistID] [int] IDENTITY(1,1) NOT NULL,
	[UserProfileID] [int] NOT NULL,
	[SpecialistIn] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SpecialistDescription] PRIMARY KEY CLUSTERED 
(
	[SpecialistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserCategory]    Script Date: 6/16/2014 5:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCategory](
	[UserCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[UserType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserCategory] PRIMARY KEY CLUSTERED 
(
	[UserCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLoginHistory]    Script Date: 6/16/2014 5:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLoginHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[LoginStatus] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserLoginHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 6/16/2014 5:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserProfileID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[VerifyID] [int] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[IsActive] [nvarchar](50) NOT NULL,
	[DeletedDatetime] [datetime] NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[DateOfBirth] [nvarchar](50) NULL,
	[PhoneNo] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Qualification] [nvarchar](50) NULL,
	[Experience] [nvarchar](50) NULL,
	[EstablishedYear] [date] NULL,
	[Location] [nvarchar](50) NULL,
	[HospitalName] [nvarchar](50) NULL,
	[EmployeeInfo] [nvarchar](50) NULL,
	[ImgPathSmall] [nvarchar](50) NULL,
	[ImgPathMedium] [nvarchar](50) NULL,
	[ImgPathLarge] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserProfile] PRIMARY KEY CLUSTERED 
(
	[UserProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserProfileComment]    Script Date: 6/16/2014 5:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfileComment](
	[CmtID] [int] IDENTITY(1,1) NOT NULL,
	[UserProfileID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[VerifyID] [int] NOT NULL,
	[CommentedDateTIme] [datetime] NOT NULL,
	[CmtDescription] [nvarchar](50) NOT NULL,
	[CmtStatus] [nvarchar](50) NOT NULL,
	[CmtDeletedDateTime] [datetime] NULL,
 CONSTRAINT [PK_UserProfileComment] PRIMARY KEY CLUSTERED 
(
	[CmtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserProfileRating]    Script Date: 6/16/2014 5:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfileRating](
	[RateID] [int] IDENTITY(1,1) NOT NULL,
	[UserProfileID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[VerifyID] [int] NOT NULL,
	[RatedDateTime] [datetime] NOT NULL,
	[RateValue] [int] NOT NULL,
	[ReviewRateValue] [int] NULL,
 CONSTRAINT [PK_UserProfileRating] PRIMARY KEY CLUSTERED 
(
	[RateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ProfileCmtRateVerification]  WITH CHECK ADD  CONSTRAINT [FK_ProfileCmtRateVerification_RegisterUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[RegisterUsers] ([UserID])
GO
ALTER TABLE [dbo].[ProfileCmtRateVerification] CHECK CONSTRAINT [FK_ProfileCmtRateVerification_RegisterUsers]
GO
ALTER TABLE [dbo].[ProfileCmtRateVerification]  WITH CHECK ADD  CONSTRAINT [FK_ProfileCmtRateVerification_UserProfile] FOREIGN KEY([UserProfileID])
REFERENCES [dbo].[UserProfile] ([UserProfileID])
GO
ALTER TABLE [dbo].[ProfileCmtRateVerification] CHECK CONSTRAINT [FK_ProfileCmtRateVerification_UserProfile]
GO
ALTER TABLE [dbo].[ProfileCmtRateVerification]  WITH CHECK ADD  CONSTRAINT [FK_ProfileCmtRateVerification_UserProfileComment] FOREIGN KEY([CmtID])
REFERENCES [dbo].[UserProfileComment] ([CmtID])
GO
ALTER TABLE [dbo].[ProfileCmtRateVerification] CHECK CONSTRAINT [FK_ProfileCmtRateVerification_UserProfileComment]
GO
ALTER TABLE [dbo].[RegisterUsers]  WITH CHECK ADD  CONSTRAINT [FK_RegisterUsers_UserCategory] FOREIGN KEY([UserCategoryID])
REFERENCES [dbo].[UserCategory] ([UserCategoryID])
GO
ALTER TABLE [dbo].[RegisterUsers] CHECK CONSTRAINT [FK_RegisterUsers_UserCategory]
GO
ALTER TABLE [dbo].[RegUserVerification]  WITH CHECK ADD  CONSTRAINT [FK_RegUserVerification_RegisterUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[RegisterUsers] ([UserID])
GO
ALTER TABLE [dbo].[RegUserVerification] CHECK CONSTRAINT [FK_RegUserVerification_RegisterUsers]
GO
ALTER TABLE [dbo].[SiteArticle]  WITH CHECK ADD  CONSTRAINT [FK_SiteArticle_RegisterUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[RegisterUsers] ([UserID])
GO
ALTER TABLE [dbo].[SiteArticle] CHECK CONSTRAINT [FK_SiteArticle_RegisterUsers]
GO
ALTER TABLE [dbo].[SpecialistDescription]  WITH CHECK ADD  CONSTRAINT [FK_SpecialistDescription_UserProfile] FOREIGN KEY([UserProfileID])
REFERENCES [dbo].[UserProfile] ([UserProfileID])
GO
ALTER TABLE [dbo].[SpecialistDescription] CHECK CONSTRAINT [FK_SpecialistDescription_UserProfile]
GO
ALTER TABLE [dbo].[UserLoginHistory]  WITH CHECK ADD  CONSTRAINT [FK_UserLoginHistory_RegisterUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[RegisterUsers] ([UserID])
GO
ALTER TABLE [dbo].[UserLoginHistory] CHECK CONSTRAINT [FK_UserLoginHistory_RegisterUsers]
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_UserProfile_ProfileCmtRateVerification] FOREIGN KEY([VerifyID])
REFERENCES [dbo].[ProfileCmtRateVerification] ([VerifyID])
GO
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_UserProfile_ProfileCmtRateVerification]
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_UserProfile_RegisterUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[RegisterUsers] ([UserID])
GO
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_UserProfile_RegisterUsers]
GO
ALTER TABLE [dbo].[UserProfileComment]  WITH CHECK ADD  CONSTRAINT [FK_UserProfileComment_RegisterUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[RegisterUsers] ([UserID])
GO
ALTER TABLE [dbo].[UserProfileComment] CHECK CONSTRAINT [FK_UserProfileComment_RegisterUsers]
GO
ALTER TABLE [dbo].[UserProfileComment]  WITH CHECK ADD  CONSTRAINT [FK_UserProfileComment_UserProfile] FOREIGN KEY([UserProfileID])
REFERENCES [dbo].[UserProfile] ([UserProfileID])
GO
ALTER TABLE [dbo].[UserProfileComment] CHECK CONSTRAINT [FK_UserProfileComment_UserProfile]
GO
ALTER TABLE [dbo].[UserProfileRating]  WITH CHECK ADD  CONSTRAINT [FK_UserProfileRating_ProfileCmtRateVerification] FOREIGN KEY([VerifyID])
REFERENCES [dbo].[ProfileCmtRateVerification] ([VerifyID])
GO
ALTER TABLE [dbo].[UserProfileRating] CHECK CONSTRAINT [FK_UserProfileRating_ProfileCmtRateVerification]
GO
ALTER TABLE [dbo].[UserProfileRating]  WITH CHECK ADD  CONSTRAINT [FK_UserProfileRating_RegisterUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[RegisterUsers] ([UserID])
GO
ALTER TABLE [dbo].[UserProfileRating] CHECK CONSTRAINT [FK_UserProfileRating_RegisterUsers]
GO
ALTER TABLE [dbo].[UserProfileRating]  WITH CHECK ADD  CONSTRAINT [FK_UserProfileRating_UserProfile] FOREIGN KEY([UserProfileID])
REFERENCES [dbo].[UserProfile] ([UserProfileID])
GO
ALTER TABLE [dbo].[UserProfileRating] CHECK CONSTRAINT [FK_UserProfileRating_UserProfile]
GO
