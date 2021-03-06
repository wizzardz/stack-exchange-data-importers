/****** Object:  Table [dbo].[Votes]    Script Date: 09-02-2015 PM 11:13:11 ******/
DROP TABLE [dbo].[Votes]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09-02-2015 PM 11:13:11 ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 09-02-2015 PM 11:13:11 ******/
DROP TABLE [dbo].[Tags]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 09-02-2015 PM 11:13:11 ******/
DROP TABLE [dbo].[Posts]
GO
/****** Object:  Table [dbo].[PostLinks]    Script Date: 09-02-2015 PM 11:13:11 ******/
DROP TABLE [dbo].[PostLinks]
GO
/****** Object:  Table [dbo].[PostHistory]    Script Date: 09-02-2015 PM 11:13:11 ******/
DROP TABLE [dbo].[PostHistory]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 09-02-2015 PM 11:13:11 ******/
DROP TABLE [dbo].[Comments]
GO
/****** Object:  Table [dbo].[Badges]    Script Date: 09-02-2015 PM 11:13:11 ******/
DROP TABLE [dbo].[Badges]
GO
/****** Object:  Table [dbo].[Badges]    Script Date: 09-02-2015 PM 11:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Badges](
	[Id] [int] NOT NULL,
	[Date] [datetime] NULL,
	[Name] [nvarchar](50) NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Badges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 09-02-2015 PM 11:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] NOT NULL,
	[CreationDate] [datetime] NULL,
	[PostId] [int] NULL,
	[Score] [int] NULL,
	[Text] [nvarchar](600) NULL,
	[UserDisplayName] [nvarchar](30) NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PostHistory]    Script Date: 09-02-2015 PM 11:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostHistory](
	[Id] [int] NOT NULL,
	[Comment] [nvarchar](400) NULL,
	[CreationDate] [datetime] NULL,
	[PostHistoryTypeId] [tinyint] NULL,
	[PostId] [int] NULL,
	[RevisionGUID] [uniqueidentifier] NULL,
	[Text] [nvarchar](max) NULL,
	[UserDisplayName] [nvarchar](40) NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_PostHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PostLinks]    Script Date: 09-02-2015 PM 11:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostLinks](
	[Id] [int] NOT NULL,
	[CreationDate] [datetime] NULL,
	[LinkTypeId] [tinyint] NULL,
	[PostId] [int] NULL,
	[RelatedPostId] [int] NULL,
 CONSTRAINT [PK_PostLinks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Posts]    Script Date: 09-02-2015 PM 11:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] NOT NULL,
	[PostTypeId] [tinyint] NULL,
	[AcceptedAnswerId] [int] NULL,
	[ParentId] [int] NULL,
	[CreationDate] [datetime] NULL,
	[Score] [int] NULL,
	[ViewCount] [int] NULL,
	[Body] [nvarchar](max) NULL,
	[OwnerUserId] [int] NULL,
	[OwnerDisplayName] [nvarchar](40) NULL,
	[LastEditorUserId] [int] NULL,
	[LastEditorDisplayName] [nvarchar](40) NULL,
	[LastEditDate] [datetime] NULL,
	[LastActivityDate] [datetime] NULL,
	[Title] [nvarchar](250) NULL,
	[Tags] [nvarchar](150) NULL,
	[AnswerCount] [int] NULL,
	[CommentCount] [int] NULL,
	[FavoriteCount] [int] NULL,
	[ClosedDate] [datetime] NULL,
	[CommunityOwnedDate] [datetime] NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tags]    Script Date: 09-02-2015 PM 11:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] NOT NULL,
	[Count] [int] NULL,
	[ExcerptPostId] [int] NULL,
	[TagName] [nvarchar](25) NULL,
	[WikiPostId] [int] NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 09-02-2015 PM 11:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] NOT NULL,
	[AboutMe] [nvarchar](max) NULL,
	[AccountId] [int] NULL,
	[Age] [int] NULL,
	[CreationDate] [datetime] NULL,
	[DisplayName] [nvarchar](40) NULL,
	[DownVotes] [int] NULL,
	[EmailHash] [varchar](32) NULL,
	[LastAccessDate] [datetime] NULL,
	[Location] [nvarchar](100) NULL,
	[ProfileImageUrl] [nvarchar](200) NULL,
	[Reputation] [int] NULL,
	[UpVotes] [int] NULL,
	[Views] [int] NULL,
	[WebsiteUrl] [nvarchar](200) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Votes]    Script Date: 09-02-2015 PM 11:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Votes](
	[Id] [int] NOT NULL,
	[BountyAmount] [int] NULL,
	[CreationDate] [datetime] NULL,
	[PostId] [int] NULL,
	[UserId] [int] NULL,
	[VoteTypeId] [tinyint] NULL,
 CONSTRAINT [PK_Votes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
