USE [PRJ301_SE1762_FA23]
GO
/****** Object:  Table [dbo].[account_he176151]    Script Date: 11/4/2023 10:28:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account_he176151](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone_number] [nvarchar](20) NULL,
	[role_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[event_he176151]    Script Date: 11/4/2023 10:28:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event_he176151](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[startHour] [time](0) NULL,
	[date] [date] NULL,
 CONSTRAINT [PK__event__3213E83FE5458121] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[film_he176151]    Script Date: 11/4/2023 10:28:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[film_he176151](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[category] [nvarchar](50) NULL,
	[length] [int] NULL,
	[description] [ntext] NULL,
	[age_limit] [int] NULL,
	[director] [nvarchar](100) NULL,
	[actor] [nvarchar](255) NULL,
	[warning_text] [ntext] NULL,
	[publish_time] [datetime] NULL,
	[origin] [nvarchar](50) NULL,
	[img] [nvarchar](255) NULL,
	[img_background] [nvarchar](255) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK__film__3213E83FECC0E214] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[news_he176151]    Script Date: 11/4/2023 10:28:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news_he176151](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[img] [nvarchar](255) NULL,
	[date] [date] NULL,
	[description] [ntext] NULL,
 CONSTRAINT [PK__news__3213E83FB84E9344] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room_he176151]    Script Date: 11/4/2023 10:28:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room_he176151](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[capacity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[seat_he176151]    Script Date: 11/4/2023 10:28:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seat_he176151](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[seat_number] [nvarchar](20) NOT NULL,
	[type] [nvarchar](50) NULL,
	[price] [int] NULL,
	[roomid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticket_film_he176151]    Script Date: 11/4/2023 10:28:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket_film_he176151](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[filmid] [int] NOT NULL,
	[roomid] [int] NOT NULL,
	[eventid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticket_he176151]    Script Date: 11/4/2023 10:28:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket_he176151](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[accountid] [int] NOT NULL,
	[seatid] [int] NOT NULL,
	[ticket_filmid] [int] NOT NULL,
	[bookingTime] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK__ticket__3213E83F39FA43E3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[seat_he176151]  WITH CHECK ADD  CONSTRAINT [FKseat283365] FOREIGN KEY([roomid])
REFERENCES [dbo].[room_he176151] ([id])
GO
ALTER TABLE [dbo].[seat_he176151] CHECK CONSTRAINT [FKseat283365]
GO
ALTER TABLE [dbo].[ticket_film_he176151]  WITH CHECK ADD  CONSTRAINT [FKticket_fil165113] FOREIGN KEY([filmid])
REFERENCES [dbo].[film_he176151] ([id])
GO
ALTER TABLE [dbo].[ticket_film_he176151] CHECK CONSTRAINT [FKticket_fil165113]
GO
ALTER TABLE [dbo].[ticket_film_he176151]  WITH CHECK ADD  CONSTRAINT [FKticket_fil419413] FOREIGN KEY([eventid])
REFERENCES [dbo].[event_he176151] ([id])
GO
ALTER TABLE [dbo].[ticket_film_he176151] CHECK CONSTRAINT [FKticket_fil419413]
GO
ALTER TABLE [dbo].[ticket_film_he176151]  WITH CHECK ADD  CONSTRAINT [FKticket_fil621101] FOREIGN KEY([roomid])
REFERENCES [dbo].[room_he176151] ([id])
GO
ALTER TABLE [dbo].[ticket_film_he176151] CHECK CONSTRAINT [FKticket_fil621101]
GO
ALTER TABLE [dbo].[ticket_he176151]  WITH CHECK ADD  CONSTRAINT [FKticket397351] FOREIGN KEY([ticket_filmid])
REFERENCES [dbo].[ticket_film_he176151] ([id])
GO
ALTER TABLE [dbo].[ticket_he176151] CHECK CONSTRAINT [FKticket397351]
GO
ALTER TABLE [dbo].[ticket_he176151]  WITH CHECK ADD  CONSTRAINT [FKticket662524] FOREIGN KEY([accountid])
REFERENCES [dbo].[account_he176151] ([id])
GO
ALTER TABLE [dbo].[ticket_he176151] CHECK CONSTRAINT [FKticket662524]
GO
ALTER TABLE [dbo].[ticket_he176151]  WITH CHECK ADD  CONSTRAINT [FKticket767716] FOREIGN KEY([seatid])
REFERENCES [dbo].[seat_he176151] ([id])
GO
ALTER TABLE [dbo].[ticket_he176151] CHECK CONSTRAINT [FKticket767716]
GO
