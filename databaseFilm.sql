USE [PRJ301_SE1762_FA23]
GO
/****** Object:  Table [dbo].[account_he176151]    Script Date: 12/6/2023 3:30:22 PM ******/
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
/****** Object:  Table [dbo].[event_he176151]    Script Date: 12/6/2023 3:30:22 PM ******/
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
/****** Object:  Table [dbo].[film_he176151]    Script Date: 12/6/2023 3:30:22 PM ******/
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
/****** Object:  Table [dbo].[news_he176151]    Script Date: 12/6/2023 3:30:22 PM ******/
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
/****** Object:  Table [dbo].[room_he176151]    Script Date: 12/6/2023 3:30:22 PM ******/
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
/****** Object:  Table [dbo].[seat_he176151]    Script Date: 12/6/2023 3:30:22 PM ******/
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
/****** Object:  Table [dbo].[ticket_film_he176151]    Script Date: 12/6/2023 3:30:22 PM ******/
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
/****** Object:  Table [dbo].[ticket_he176151]    Script Date: 12/6/2023 3:30:22 PM ******/
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
SET IDENTITY_INSERT [dbo].[account_he176151] ON 

INSERT [dbo].[account_he176151] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (1, N'admin', N'123', N'Phạm', N'Phong', N'Phong@123', N'123456789', 0)
INSERT [dbo].[account_he176151] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (2, N'quan', N'123', N'Kiều', N'Quân', N'quan@123', N'0123456', 1)
INSERT [dbo].[account_he176151] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (4, N'tung', N'123', N'Phạm', N'Tùng', N'tung@123', N'012345', 1)
INSERT [dbo].[account_he176151] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (5, N'duc', N'123456', N'Trần', N'Đức', N'duc@123', N'012587', 1)
INSERT [dbo].[account_he176151] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (6, N'minh', N'12', N'Nguyễn', N'Minh', N'minh@123', N'1', 1)
INSERT [dbo].[account_he176151] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (7, N'phong', N'1', N'Phạm ', N'Phong', N'phong@123', N'0987563385', 1)
INSERT [dbo].[account_he176151] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (13, N'anna', N'123', N'Nguyễn', N'anna', N'anna@123', N'098345', 1)
INSERT [dbo].[account_he176151] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (15, N'khuongpd', N'1', N'Thầy ', N'Khương', N'khuongpd@fpt.edu.vn', N'0980677028', 1)
INSERT [dbo].[account_he176151] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (16, N'tungtung', N'123444', N'Tùng', N'Tùng', N'tung@123', N'036750', 1)
INSERT [dbo].[account_he176151] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (17, N'tungtungt', N'123', N'Tùng', N'Tùng', N'tung@123', N'036750', 1)
INSERT [dbo].[account_he176151] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (18, N'tun123', N'123', N'tun', N'tun', N'tun@222', N'0125', 1)
INSERT [dbo].[account_he176151] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (19, N'minhsan', N'1', N'Minh', N'Sannnoo', N'tuffffffffn@222', N'11111222225', 1)
SET IDENTITY_INSERT [dbo].[account_he176151] OFF
GO
SET IDENTITY_INSERT [dbo].[event_he176151] ON 

INSERT [dbo].[event_he176151] ([id], [startHour], [date]) VALUES (1, CAST(N'09:00:00' AS Time), CAST(N'2023-11-20' AS Date))
INSERT [dbo].[event_he176151] ([id], [startHour], [date]) VALUES (2, CAST(N'11:00:00' AS Time), CAST(N'2023-11-20' AS Date))
INSERT [dbo].[event_he176151] ([id], [startHour], [date]) VALUES (3, CAST(N'13:00:00' AS Time), CAST(N'2023-11-20' AS Date))
INSERT [dbo].[event_he176151] ([id], [startHour], [date]) VALUES (4, CAST(N'15:00:00' AS Time), CAST(N'2023-11-20' AS Date))
INSERT [dbo].[event_he176151] ([id], [startHour], [date]) VALUES (5, CAST(N'17:00:00' AS Time), CAST(N'2023-11-20' AS Date))
INSERT [dbo].[event_he176151] ([id], [startHour], [date]) VALUES (6, CAST(N'19:00:00' AS Time), CAST(N'2023-11-20' AS Date))
SET IDENTITY_INSERT [dbo].[event_he176151] OFF
GO
SET IDENTITY_INSERT [dbo].[film_he176151] ON 

INSERT [dbo].[film_he176151] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status]) VALUES (1, N'ĐẤT RỪNG PHƯƠNG NAM
', N'Tâm lý, tình cảm
', 105, N'Sau bao ngày chờ đợi, dự án điện ảnh gợi ký ức tuổi thơ của nhiều thế hệ người Việt chính thức tung hình ảnh đầu tiên đầy cảm xúc. First look poster khắc họa hình ảnh đối lập: bé An đang ôm chặt mẹ giữa một khung cảnh chạy giặc loạn lạc. Cùng chờ đợi và theo dõi thêm hành trình bé An đi tìm cha khắp nam kỳ lục tỉnh cùng các người bạn
', 13, N'Nguyễn Quang Dũng
', N'Hồng Ánh, Huỳnh Hạo Khang, Mai Tài Phến, Công Ninh, Hứa Vĩ Văn, Tuyền Mập, Tuấn Trần.
', N'Khuyến cáo: K - PHIM ĐƯỢC PHỔ BIẾN ĐẾN NGƯỜI XEM DƯỚI 13 TUỔI VÀ CÓ NGƯỜI BẢO HỘ ĐI KÈM
', CAST(N'2023-10-20T00:00:00.000' AS DateTime), N'Việt Nam', N'1.jpg
', N'datrungphuongnam2.jpg
', 0)
INSERT [dbo].[film_he176151] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status]) VALUES (2, N'THÀNH PHỐ NGỦ GẬT
', N'Tâm lý, tình cảm
', 73, N'Nhân vật chính là một chàng thanh niên 26 tuổi, sống đơn độc giữa trung tâm thành phố nhộn nhịp, mưu sinh bằng nghề mổ gà. Một ngày, sự xuất hiện của nhóm giang hồ và một cô gái điếm đã tác động đến cuộc sống của anh. Điều đó đã làm cho bản năng hoang dã của chàng thanh niên trỗi dậy không kiểm soát.
', 18, N'Lương Đình Dũng
', N'Quốc Toàn, Minh Hiền, Đức Trí, Tạ Xuân Tuế, Ba Trường,..
', N'Khuyến cáo: T18: Phim được phổ biến đến khán giả từ đủ 18 tuổi trở lên.
', CAST(N'2023-10-13T00:00:00.000' AS DateTime), N'Việt Nam
', N'2.jpg
', N'thanhphongugat.jpg
', 0)
INSERT [dbo].[film_he176151] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status]) VALUES (3, N'HÒN ĐẢO KỲ BÍ-P
', N'Hài, Hoạt hình
', 97, N'Wolfoo and The Mysterious Island (Wolfoo và hòn đảo kỳ bí) - câu chuyện xoanh quanh nhân vật chính là chú sói nhỏ Wolfoo 8 tuổi - một chú bé vui vẻ, tốt bụng và yêu thích sự khám phá. Đồng hành cùng Wolfoo chính là cô em gái Lucy 6 tuổi tinh nghịch, hay làm nũng nhưng vô cùng yêu thương anh trai. Câu chuyện bắt đầu khi hai anh em Wolfoo
', 6, N'Phan Thị Thơ
', N'Sony Minh Hiếu, Đạt Phi, Như Ý
', N'Khuyến cáo: Phim phổ biến cho mọi lứa tuổi
', CAST(N'2023-10-13T00:00:00.000' AS DateTime), N'Mỹ
', N'3.jpg
', N'hondaokibi.jpg
', 0)
INSERT [dbo].[film_he176151] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status]) VALUES (4, N'VẦNG TRĂNG MÁU
', N'Tâm lý, tình cảm
', 206, N'Vào những năm 1920, các thành viên của khu tự trị Osage ở Mỹ bị ám sát một cách bí ẩn, làm dấy lên một cuộc điều tra lớn của FBI.
', 18, N' Martin Scorsese
', N'Leonardo DiCaprio, Robert De Niro, Lily Gladstone
', N'Khuyến cáo: T18 - PHIM ĐƯỢC PHỔ BIẾN ĐẾN NGƯỜI XEM TỪ ĐỦ 18 TUỔI TRỞ LÊN (18+)
', CAST(N'2023-10-20T00:00:00.000' AS DateTime), N'Mỹ
', N'4.jpg
', NULL, 1)
INSERT [dbo].[film_he176151] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status]) VALUES (5, N'KỊ SĨ BÓNG ĐÊM- T13', N'Hành động', 145, N'Kị Sĩ Bóng Đêm mở đầu bằng cuộc oanh tạc của Joker tại ngân hàng thành phố Gotham. Hắn gài bẫy nhóm cướp và rời đi một mình cùng số tiền khổng lồ. Trong khi đó, Batman, công tố viên Harvey Dent cùng ủy viên James Gordon liên minh và đưa ra sắc lệnh chống tội phạm trong thành phố. Tuy nhiên, Joker với tính cách điên loạn vẫn', 13, N'Christopher Nolan', N'Christian Bale, Michael Caine, Heath Ledger, Aaron Eckhart', N'Khuyến cáo: T13 - PHIM ĐƯỢC PHỔ BIẾN ĐẾN NGƯỜI XEM TỪ ĐỦ 13 TUỔI TRỞ LÊN (13+)', CAST(N'2023-10-18T00:00:00.000' AS DateTime), N'Mỹ', N'5.jpg', N'batman.jpg', 0)
INSERT [dbo].[film_he176151] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status]) VALUES (6, N'MUÔN KIẾP NHÂN DUYÊN', N'Tâm lý, tình cảm', 99, N'Muôn Kiếp Nhân Duyên xoay quanh hai nhân vật chính - Nora (Greta Lee) và Hae Sung (Teo Yoo). Tình bạn thân thiết của họ bị chia cắt khi Nora theo gia đình di cư khỏi Hàn Quốc vào năm 12 tuổi. 20 năm sau, như một mối duyên tiền định, họ gặp lại nhau tại Mỹ, nhưng lúc này, Nora đã trở thành vợ của Arthur (John Magaro). Nhìn lại quá khứ, nói về', 16, N'Celine Song', N'Greta Lee, Teo Yoo, John Magaro', N'Khuyến cáo: T16: Phim được phổ biến đến khán giả từ đủ 16 tuổi trở lên;', CAST(N'2023-09-29T00:00:00.000' AS DateTime), N'Hàn Quốc', N'6.jpg', N'nhanduyen.jpg', 0)
INSERT [dbo].[film_he176151] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status]) VALUES (7, N'NHÀ VỊT DI CƯ
', N'Hoạt hình, Phiêu lưu', 100, N'Lưu ý: - Khán giả dưới 13 tuổi chỉ chọn suất chiếu kết thúc trước 22h. - Khán giả dưới 16 tuổi chỉ chọn suất chiếu kết thúc trước 23h. Tóm tắt: Nhà Vịt Di Cư theo chân một gia đình vịt trời gồm vịt bố, vịt mẹ, cậu con trai tuổi teen Dax và vịt út Gwen, trong lần đầu tiên trải nghiệm chuyến di cư tiến về phía nam để trú đông. Thế nhưng, niềm vui vẻ sự', 6, N'Benjamin Renner', N'Kumail Nanjiani, Elizabeth Banks, Caspar Jennings, Tresi Gazal, Awkwafina,', N'Khuyến cáo: .', CAST(N'2023-12-22T00:00:00.000' AS DateTime), N'Mỹ', N'7.jpg', NULL, 0)
INSERT [dbo].[film_he176151] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status]) VALUES (8, N'KẺ KIẾN TẠO-T13', N'Hành động, Tâm lý', 124, N'Cuộc chiến giữa loài người và AI sắp diễn ra. Đón xem The Creator (Kẻ Kiến Tạo) - Dự kiến khởi chiếu: 29.09.2023', 13, N'Gareth Edwards', N'Gemma Chan, John David Washington, Ralph Ineson, Ngo Thanh Van', N'Khuyến cáo: T13 - PHIM ĐƯỢC PHỔ BIẾN ĐẾN NGƯỜI XEM TỪ ĐỦ 13 TUỔI TRỞ LÊN (13+)', CAST(N'2023-09-29T00:00:00.000' AS DateTime), N'Mỹ', N'8.jpg', NULL, 0)
INSERT [dbo].[film_he176151] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status]) VALUES (9, N'YÊU NHƯ LẦN ĐẦU', N'Tình cảm', 100, N'Tình yêu sẽ đến với những ai tin tưởng. #LoveAgainMovie, một bộ phim healing cho những ai đã, đang và sẽ yêu. Với sự tham gia diễn viên Priyanka Chopra và Sam Heughan, cùng Céline Dion và bài hát mới của cô.', 15, N'Han Sang Hee', N'San E, Jung Chae Yeon, Chi Pu, Jin Ju Hyung, Kang Tae Yoon', N'Khuyến cáo: .', CAST(N'2023-10-30T00:00:00.000' AS DateTime), N'Hàn Quốc', N'9.jpg', NULL, 1)
INSERT [dbo].[film_he176151] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status]) VALUES (10, N'CHIẾM ĐOẠT', N'Tâm lý, tình cảm', 100, N'Kể về người vợ của một gia đình thượng lưu thuê cô bảo mẫu “trong mơ” để chăm sóc con trai mình. Nhưng cô không ngờ rằng, phía sau sự trong sáng, tinh khiết kia, cô bảo mẫu luôn che giấu âm mưu nhằm phá hoại hạnh phúc gia đình và khiến cuộc sống của cô thay đổi mãi mãi.', 15, N'Thắng Vũ', N'Miu Lê, Lãnh Thanh, Karik, Phương Anh Đào,...', N'Khuyến cáo: .', CAST(N'2023-11-24T00:00:00.000' AS DateTime), N'Việt Nam', N'10.jpg', NULL, 1)
INSERT [dbo].[film_he176151] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status]) VALUES (11, N'MÓNG VUỐT', N'Kinh dị', 100, N'Móng Vuốt dẫn dắt câu chuyện đi từ buổi tiệc dã ngoại náo nhiệt của một nhóm bạn đến một kết cục kinh hoàng khi phải đấu tranh sinh tồn với một con ác thú.', 15, N' LÊ THANH SƠN', N'Kaity Nguyễn, Tuấn Trần, Rocker Nguyễn, Naomi, Quốc Khánh, Gi A Nguyễn', N'Khuyến cáo: Đang cập nhật', CAST(N'2023-12-12T00:00:00.000' AS DateTime), N'Việt Nam', N'11.jpg', NULL, 1)
INSERT [dbo].[film_he176151] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status]) VALUES (12, N'NGƯỜI VỢ CUỐI CÙNG', N'Tâm lý, tình cảm', 128, N'Lấy cảm hứng từ tiểu thuyết Hồ Oán Hận, của nhà văn Hồng Thái, Người Vợ Cuối Cùng là một bộ phim tâm lý cổ trang, lấy bối cảnh Việt Nam vào triều Nguyễn. LINH - Người vợ bất đắc dĩ của một viên quan tri huyện, xuất thân là con của một gia đình nông dân nghèo khó, vì không thể hoàn thành nghĩa vụ sinh con nối dõi nên đã chịu sự chèn ép', 18, N'Victor Vũ', N'Kaity Nguyễn - Thuận Nguyễn - NSƯT Quang Thắng - NSƯT Kim Oanh - Đinh Ngọc Diệp - Anh Dũng - Quốc Huy - Bé Lưu Ly', N'Khuyến cáo: T18: Phim được phổ biến đến khán giả từ đủ 18 tuổi trở lên.', CAST(N'2023-11-03T00:00:00.000' AS DateTime), N'Việt Nam', N'12.jpg', NULL, 1)
INSERT [dbo].[film_he176151] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status]) VALUES (13, N'CÚ MÁY ĂN TIỀN', N'Tâm Lý', 132, N'Cú Máy Ăn Tiền lấy bối cảnh thực tế và câu chuyện làm phim những năm 1970 ở Hàn Quốc. Kim Yeol (Song Kang Ho thủ vai) - một đạo diễn điện ảnh có bộ phim đầu tay được giới phê bình khen ngợi, nhưng sự nghiệp của ông tuột dốc không phanh khi liên tiếp ra đời những tác phẩm bị coi là “phim rác”. Sau khi hoàn thành xong bộ phim mới nhất là Cobweb, đạo diễn Kim cảm thấy cần quay lại cái kết để có thể tạo ra một kiệt tác', 16, N'KIM Jee-woon', N'SONG Kang-ho, LIM Soo-jung, OH Jung-se, JEON Yeo-been, Krystal JUNG, PARK Jung-soo, JANG Young-nam', N'Khuyến cáo: T16 - PHIM ĐƯỢC PHỔ BIẾN ĐẾN NGƯỜI XEM TỪ ĐỦ 16 TUỔI TRỞ LÊN (16+)', CAST(N'2023-10-13T00:00:00.000' AS DateTime), N'Hàn Quốc', N'13.jpg', NULL, 1)
SET IDENTITY_INSERT [dbo].[film_he176151] OFF
GO
SET IDENTITY_INSERT [dbo].[news_he176151] ON 

INSERT [dbo].[news_he176151] ([id], [img], [date], [description]) VALUES (1, N'new1.jpg', CAST(N'2023-10-04' AS Date), N'Bé Happi- Cherry An Nhiên xuất hiện vô cùng đáng yêu tại thảm đỏ phim Giao lộ 8675 Trung tâm Chiếu phim Quốc gia')
INSERT [dbo].[news_he176151] ([id], [img], [date], [description]) VALUES (2, N'new2.jpg', CAST(N'2023-09-21' AS Date), N'NCC CHIÊU ĐÃI BẠN PHIM MỚI RA MẮT NGÀY 22.09.2023')
INSERT [dbo].[news_he176151] ([id], [img], [date], [description]) VALUES (3, N'new3.jpg', CAST(N'2023-09-25' AS Date), N'Xem NGƯỜI DƠI BẮT ĐẦU chỉ với 79k !!!!')
INSERT [dbo].[news_he176151] ([id], [img], [date], [description]) VALUES (4, N'new4.jpg', CAST(N'2023-09-27' AS Date), N'Thông Báo lựa chọn tổ chức đấu giá tài sản')
INSERT [dbo].[news_he176151] ([id], [img], [date], [description]) VALUES (5, N'new5.jpg', CAST(N'2023-06-14' AS Date), N'Tham gia Siêu hội không tiền mặt, ẵm loạt ưu đãi tới 50k')
INSERT [dbo].[news_he176151] ([id], [img], [date], [description]) VALUES (6, N'new6.jpg', CAST(N'2019-09-12' AS Date), N'Khởi chiếu sớm siêu phẩm hài, hành động “JUMANJI: THE NEXT LEVEL”')
INSERT [dbo].[news_he176151] ([id], [img], [date], [description]) VALUES (7, N'new7.jpg', CAST(N'2022-10-10' AS Date), N'Liên hoan phim Nhật Bản 2019 tại Hà Nội (06/12/2019 - 22/12/2019)')
INSERT [dbo].[news_he176151] ([id], [img], [date], [description]) VALUES (8, N'new8.jpg', CAST(N'2022-01-01' AS Date), N'Khởi chiếu sớm bộ phim “NGỐC ƠI TUỔI 17”')
INSERT [dbo].[news_he176151] ([id], [img], [date], [description]) VALUES (9, N'new5.jpg', CAST(N'2023-08-08' AS Date), N'SUẤT CHIẾU SỚM CỦA "FROZEN II - NỮ HOÀNG BĂNG GIÁ II"')
INSERT [dbo].[news_he176151] ([id], [img], [date], [description]) VALUES (10, N'new6.jpg', CAST(N'2023-08-05' AS Date), N'Chương trình phim đang chiếu (Từ 06/12 đến 12/12)')
SET IDENTITY_INSERT [dbo].[news_he176151] OFF
GO
SET IDENTITY_INSERT [dbo].[room_he176151] ON 

INSERT [dbo].[room_he176151] ([id], [name], [capacity]) VALUES (1, N'Room A', 30)
INSERT [dbo].[room_he176151] ([id], [name], [capacity]) VALUES (2, N'Room B', 40)
INSERT [dbo].[room_he176151] ([id], [name], [capacity]) VALUES (3, N'Room C', 50)
INSERT [dbo].[room_he176151] ([id], [name], [capacity]) VALUES (4, N'Room D', 70)
INSERT [dbo].[room_he176151] ([id], [name], [capacity]) VALUES (6, N'Room F', 50)
INSERT [dbo].[room_he176151] ([id], [name], [capacity]) VALUES (7, N'Room H', 70)
INSERT [dbo].[room_he176151] ([id], [name], [capacity]) VALUES (8, N'Room G', 80)
INSERT [dbo].[room_he176151] ([id], [name], [capacity]) VALUES (9, N'Room J', 70)
SET IDENTITY_INSERT [dbo].[room_he176151] OFF
GO
SET IDENTITY_INSERT [dbo].[seat_he176151] ON 

INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (1, N'A1', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (2, N'A2', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (3, N'A3', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (4, N'A4', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (5, N'A5', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (6, N'A6', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (7, N'A7', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (8, N'A8', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (9, N'A9', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (10, N'A10', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (11, N'B1', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (12, N'B2', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (13, N'B3', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (14, N'B4', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (15, N'B5', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (16, N'B6', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (17, N'B7', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (18, N'B8', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (19, N'B9', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (20, N'B10', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (21, N'C1', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (22, N'C2', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (23, N'C3', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (24, N'C4', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (25, N'C5', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (26, N'C6', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (27, N'C7', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (28, N'C8', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (29, N'C9', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (30, N'C10', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (31, N'A1', N'Standard', 100000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (32, N'A2', N'Standard', 100000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (33, N'A3', N'Standard', 100000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (34, N'A4', N'Standard', 100000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (35, N'A5', N'Standard', 100000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (36, N'A6', N'Standard', 100000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (37, N'A7', N'Standard', 100000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (38, N'A8', N'Standard', 100000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (39, N'A9', N'Standard', 100000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (40, N'A10', N'Standard', 100000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (41, N'B1', N'Standard', 100000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (42, N'B2', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (43, N'B3', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (44, N'B4', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (45, N'B5', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (46, N'B6', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (47, N'B7', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (48, N'B8', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (49, N'B9', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (50, N'B10', N'Standard', 100000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (51, N'C1', N'Standard', 100000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (52, N'C2', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (53, N'C3', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (54, N'C4', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (55, N'C5', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (56, N'C6', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (57, N'C7', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (58, N'C8', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (59, N'C9', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (60, N'C10', N'Standard', 100000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (61, N'D1', N'Standard', 100000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (62, N'D2', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (63, N'D3', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (64, N'D4', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (65, N'D5', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (66, N'D6', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (67, N'D7', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (68, N'D8', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (69, N'D9', N'VIP', 150000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (70, N'D10', N'Standard', 100000, 2)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (71, N'A1', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (72, N'A2', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (73, N'A3', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (74, N'A4', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (75, N'A5', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (76, N'A6', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (77, N'A7', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (78, N'A8', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (79, N'A9', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (80, N'A10', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (81, N'B1', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (82, N'B2', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (83, N'B3', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (84, N'B4', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (85, N'B5', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (86, N'B6', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (87, N'B7', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (88, N'B8', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (89, N'B9', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (90, N'B10', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (91, N'C1', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (92, N'C2', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (93, N'C3', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (94, N'C4', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (95, N'C5', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (96, N'C6', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (97, N'C7', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (98, N'C8', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (99, N'C9', N'Standard', 100000, 3)
GO
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (100, N'C10', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (101, N'D1', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (102, N'D2', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (103, N'D3', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (104, N'D4', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (105, N'D5', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (106, N'D6', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (107, N'D7', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (108, N'D8', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (109, N'D9', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (110, N'D10', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (111, N'E1', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (112, N'E2', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (113, N'E3', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (114, N'E4', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (115, N'E5', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (116, N'E6', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (117, N'E7', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (118, N'E8', N'VIP', 150000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (119, N'E9', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (120, N'E10', N'Standard', 100000, 3)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (121, N'D1', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (122, N'D2', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (123, N'D3', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (124, N'D4', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (125, N'D5', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (126, N'D6', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (127, N'D7', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (128, N'D8', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (129, N'D9', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (130, N'D10', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (131, N'E1', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (132, N'E2', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (133, N'E3', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (134, N'E4', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (135, N'E5', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (136, N'E6', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (137, N'E7', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (138, N'E8', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (139, N'E9', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (140, N'E10', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (141, N'F1', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (142, N'F2', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (143, N'F3', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (144, N'F4', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (145, N'F5', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (146, N'F6', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (147, N'F7', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (148, N'F8', N'VIP', 150000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (149, N'F9', N'Standard', 100000, 1)
INSERT [dbo].[seat_he176151] ([id], [seat_number], [type], [price], [roomid]) VALUES (150, N'F10', N'Standard', 100000, 1)
SET IDENTITY_INSERT [dbo].[seat_he176151] OFF
GO
SET IDENTITY_INSERT [dbo].[ticket_film_he176151] ON 

INSERT [dbo].[ticket_film_he176151] ([id], [filmid], [roomid], [eventid]) VALUES (1, 1, 1, 1)
INSERT [dbo].[ticket_film_he176151] ([id], [filmid], [roomid], [eventid]) VALUES (2, 1, 2, 2)
INSERT [dbo].[ticket_film_he176151] ([id], [filmid], [roomid], [eventid]) VALUES (3, 1, 3, 4)
INSERT [dbo].[ticket_film_he176151] ([id], [filmid], [roomid], [eventid]) VALUES (4, 2, 2, 3)
INSERT [dbo].[ticket_film_he176151] ([id], [filmid], [roomid], [eventid]) VALUES (5, 2, 3, 1)
INSERT [dbo].[ticket_film_he176151] ([id], [filmid], [roomid], [eventid]) VALUES (6, 3, 3, 3)
INSERT [dbo].[ticket_film_he176151] ([id], [filmid], [roomid], [eventid]) VALUES (7, 3, 2, 1)
INSERT [dbo].[ticket_film_he176151] ([id], [filmid], [roomid], [eventid]) VALUES (8, 11, 6, 6)
INSERT [dbo].[ticket_film_he176151] ([id], [filmid], [roomid], [eventid]) VALUES (9, 11, 7, 5)
INSERT [dbo].[ticket_film_he176151] ([id], [filmid], [roomid], [eventid]) VALUES (10, 11, 7, 5)
INSERT [dbo].[ticket_film_he176151] ([id], [filmid], [roomid], [eventid]) VALUES (11, 9, 6, 5)
INSERT [dbo].[ticket_film_he176151] ([id], [filmid], [roomid], [eventid]) VALUES (12, 9, 6, 5)
INSERT [dbo].[ticket_film_he176151] ([id], [filmid], [roomid], [eventid]) VALUES (13, 9, 6, 5)
INSERT [dbo].[ticket_film_he176151] ([id], [filmid], [roomid], [eventid]) VALUES (14, 8, 7, 4)
INSERT [dbo].[ticket_film_he176151] ([id], [filmid], [roomid], [eventid]) VALUES (15, 8, 7, 3)
SET IDENTITY_INSERT [dbo].[ticket_film_he176151] OFF
GO
SET IDENTITY_INSERT [dbo].[ticket_he176151] ON 

INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (1, 2, 1, 1, CAST(N'2023-10-21T11:20:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (3, 2, 3, 1, CAST(N'2023-10-21T19:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (4, 2, 14, 1, CAST(N'2023-10-21T21:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (20, 7, 17, 1, CAST(N'2023-10-21T20:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (21, 7, 55, 2, CAST(N'2023-10-20T10:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (22, 7, 56, 2, CAST(N'2023-10-22T11:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (23, 2, 55, 4, CAST(N'2023-10-22T11:00:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (24, 2, 56, 4, CAST(N'2023-10-20T11:11:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (25, 2, 95, 6, CAST(N'2023-10-20T11:22:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (26, 13, 64, 4, CAST(N'2023-10-20T10:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (27, 13, 65, 4, CAST(N'2023-10-20T10:22:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (28, 13, 125, 1, CAST(N'2023-10-20T09:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (29, 13, 68, 2, CAST(N'2023-10-20T08:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (30, 13, 56, 7, CAST(N'2023-10-20T17:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (31, 2, 126, 1, CAST(N'2023-10-20T16:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (32, 15, 143, 1, CAST(N'2023-10-20T15:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (33, 15, 142, 1, CAST(N'2023-10-20T14:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (34, 16, 99, 6, CAST(N'2023-10-20T13:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (35, 16, 100, 6, CAST(N'2023-10-20T12:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (36, 18, 105, 6, CAST(N'2023-10-20T01:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (37, 18, 106, 6, CAST(N'2023-10-20T02:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (41, 7, 83, 6, CAST(N'2023-10-20T02:22:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (49, 7, 31, 4, CAST(N'2023-11-02T11:19:51.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (50, 7, 32, 4, CAST(N'2023-11-02T11:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (51, 7, 33, 4, CAST(N'2023-11-02T11:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (52, 7, 41, 4, CAST(N'2023-11-02T11:24:14.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (53, 7, 42, 4, CAST(N'2023-11-02T11:24:14.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (54, 7, 51, 4, CAST(N'2023-11-02T11:24:14.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (103, 2, 128, 1, CAST(N'2023-11-02T19:10:37.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (316, 7, 9, 1, CAST(N'2023-11-03T13:04:29.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (317, 7, 10, 1, CAST(N'2023-11-03T13:04:29.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (342, 19, 121, 1, CAST(N'2023-11-03T14:23:12.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (343, 19, 131, 1, CAST(N'2023-11-03T14:23:12.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (368, 15, 140, 1, CAST(N'2023-11-04T10:19:41.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (369, 15, 150, 1, CAST(N'2023-11-04T10:19:41.000' AS DateTime), 1)
INSERT [dbo].[ticket_he176151] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (372, 15, 145, 1, CAST(N'2023-11-04T10:20:26.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ticket_he176151] OFF
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
