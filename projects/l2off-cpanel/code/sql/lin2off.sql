/*
All right reserved
##     ## ##  ######
##     ## ##  ##   ##
##     ## ##  ######
 ##   ##  ##  ##
   ###    ##  ##
vipcriativo.com
vipcriativo.web@gmail.com
*/

USE [lin2off]
GO
/****** Object:  Table [dbo].[users]    Script Date: 28/02/2018 12:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] int IDENTITY(1, 1) NOT NULL,
	[username] [varchar](16) NOT NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](34) NOT NULL,
	[vip] [int] NULL,
	[ip] [varchar](50) NULL
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[data_amount]    Script Date: 23-May-18 20:11:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[data_amount](
	[monday] [varchar](16) NULL,
	[tuesday] [varchar](16) NULL,
	[wednesday] [varchar](16) NULL,
	[thursday] [varchar](16) NULL,
	[friday] [varchar](16) NULL,
	[saturday] [varchar](16) NULL,
	[sunday] [varchar](16) NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[gallery](
	[id] [int] NOT NULL IDENTITY(1,1),
	[image_name] [varchar](36) NULL,
	[token] [varchar](32) PRIMARY KEY
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[posts](
	[id] [int] NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[account_id] [int] NOT NULL,
	[category] [int] NOT NULL,
	[nick] [varchar](16) NOT NULL,
	[title] [varchar](50) NOT NULL,
	[content] [varchar](150) NOT NULL,
	[date_time] [varchar](21) NOT NULL,
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[commnets](
	[id] [int] NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[account_id] [int] NOT NULL,
	[post_id] [int] NOT NULL,
	[nick] [varchar](16) NOT NULL,
	[content] [varchar](150) NOT NULL,
	[date_time] [varchar](20) NOT NULL,
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[notice](
	[id] [int] NOT NULL IDENTITY(1,1) ,
	[title] [varchar](50) NULL,
	[text] [varchar](355) NULL,
	[time] [varchar](15) NULL,
	[date] [varchar](15) NULL,
	[token] [varchar](32) PRIMARY KEY
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[live](
	[id] [int] NOT NULL IDENTITY(1,1),
	[nick] [varchar](16) NOT NULL,
	[date_time] [varchar](20) NULL,
	[url] [varchar](100) NOT NULL,
	[miniature_name] [varchar](36) NOT NULL,
	[token] [varchar](32) NOT NULL PRIMARY KEY
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[setting_view](
	[id] [int] NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[id_account] [int] NULL,
	[change_nick] smallint NULL,
	[change_email] smallint NULL,
	[unlock_char] smallint NULL,
	[password_account] smallint NULL,
	[send_email_register] smallint NULL
) ON [PRIMARY]

GO

GO
SET IDENTITY_INSERT setting_view ON
INSERT INTO setting_view (id,id_account,change_nick,change_email,unlock_char,password_account,send_email_register) VALUES (1,NULL,1,1,1,1,0)
SET IDENTITY_INSERT setting_view OFF
GO


/****** Object:  Table [dbo].[donated]    Script Date: 11/15/2018 12:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[donated](
	[id] int  IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	[item_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[item_name] [varchar](16) NOT NULL,
	[icon_name] [varchar](36) NOT NULL,
	[amount] [int] NOT NULL,
	[total] [varchar](16) NOT NULL,
	[date_time] [varchar](20) NOT NULL,
	[token] [varchar](32) NOT NULL
) ON [PRIMARY]

GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[history_donated](
	[id] int  IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	[user_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[item_name] [varchar](16) NOT NULL,
	[item_price] [varchar](16) NOT NULL,
	[amount_donated] [int] NOT NULL,
	[amount_before] [int] NULL,
	[amount_after] [int] NOT NULL,
	[date_time] [varchar](20) NOT NULL,
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[history_transfer](
	[id] int  IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	[user_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[char_id] [int] NOT NULL,
	[amount] [int] NOT NULL,
	[date_time] [varchar](20) NOT NULL,
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[item_donate]    Script Date: 11/15/2018 12:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[item_donate](
	[item_id] int  NOT NULL PRIMARY KEY,
	[user_id] [int] NOT NULL,
	[user_name] [varchar](16) NOT NULL,
	[item_name] [varchar](50) NOT NULL,
	[item_price] [varchar](11) NOT NULL,
	[item_bonus] [int]  NULL,
	[icon_name] [varchar](36) NOT NULL,
	[date_time] [varchar](20) NOT NULL,
	[token] [varchar](32) NOT NULL
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[donate_order]    Script Date: 11/15/2018 12:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[donate_order](

	[id] int  IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	[item_id] int  NOT NULL,
	[user_id] [int] NOT NULL,
	[user_name] [varchar](16) NOT NULL,
	[item_name] [varchar](50) NOT NULL,
	[icon_name] [varchar](36) NOT NULL,
	[amount] [int] NOT NULL,
	[total] [varchar](16) NOT NULL,
	[date_time] [varchar](20) NOT NULL,
	[code_reference] [varchar](36) NOT NULL,
	[token] [varchar](32) NOT NULL

) ON [PRIMARY]

GO