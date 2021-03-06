USE [PVAstore]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 7/21/2021 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](50) NOT NULL,
	[passWord] [nvarchar](50) NOT NULL,
	[phonenumber] [varchar](20) NOT NULL,
	[isAdmin] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/21/2021 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] NOT NULL,
	[name] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/21/2021 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cusID] [int] NOT NULL,
	[orderDate] [date] NOT NULL,
	[totalPrice] [float] NOT NULL,
	[note] [nchar](200) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_detail]    Script Date: 7/21/2021 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[productName] [nvarchar](200) NOT NULL,
	[productPrice] [float] NOT NULL,
	[productImage] [nvarchar](max) NOT NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/21/2021 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[cid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (1, N'admin', N'123456', N'0123456789', 1)
INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (2, N'Conan', N'aaaaaaa', N'9876543210', 0)
INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (3, N'Ran', N'bbbbbbbb', N'9632587410', 0)
INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (4, N'Mori', N'cccccccc', N'0147852369', 0)
INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (7, N'Rum', N'dddddd', N'7539148620', 0)
INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (8, N'Akashi', N'eeeeeee', N'7893210456', 0)
INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (9, N'KatoKit', N'jjjjjjj', N'7896325410', 0)
INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (10, N'AnhCao', N'123456', N'0919586171', 0)
INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (11, N'SA', N'123', N'Sa', 0)
INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (12, N'Naruto', N'123456', N'1911200119', 0)
INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (13, N'1911', N'123456', N'19111609', 0)
INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (14, N'AnhCao', N'123456', N'0375385172', 0)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
INSERT [dbo].[Categories] ([id], [name]) VALUES (1, N'Books & Stories')
INSERT [dbo].[Categories] ([id], [name]) VALUES (2, N'Wallpaper')
INSERT [dbo].[Categories] ([id], [name]) VALUES (3, N'Bookshelves')
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (1, 2, CAST(N'2021-06-30' AS Date), 75, N'sduidsaifhsiod                                                                                                                                                                                          ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (2, 2, CAST(N'2021-06-30' AS Date), 100, N'fbsdkjabf                                                                                                                                                                                               ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (3, 2, CAST(N'2021-06-30' AS Date), 50, N'bfsdk                                                                                                                                                                                                   ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (4, 2, CAST(N'2021-06-30' AS Date), 125, N'sdbfjabj                                                                                                                                                                                                ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (5, 2, CAST(N'2021-06-30' AS Date), 200, N'antoni                                                                                                                                                                                                  ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (6, 2, CAST(N'2021-06-30' AS Date), 75, N'denvaune                                                                                                                                                                                                ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (7, 2, CAST(N'2021-06-30' AS Date), 100, N'lalalalalalla                                                                                                                                                                                           ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (8, 10, CAST(N'2021-07-12' AS Date), 50, N'Äáº¹p                                                                                                                                                                                                  ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (9, 10, CAST(N'2021-07-12' AS Date), 150, N'good                                                                                                                                                                                                    ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (10, 10, CAST(N'2021-07-13' AS Date), 250, N'good                                                                                                                                                                                                    ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (11, 10, CAST(N'2021-07-13' AS Date), 250, N'good                                                                                                                                                                                                    ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (12, 10, CAST(N'2021-07-13' AS Date), 250, N'good                                                                                                                                                                                                    ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (13, 10, CAST(N'2021-07-13' AS Date), 250, N'good                                                                                                                                                                                                    ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (14, 10, CAST(N'2021-07-13' AS Date), 350, N'nice                                                                                                                                                                                                    ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (15, 12, CAST(N'2021-07-13' AS Date), 100, N'goof job                                                                                                                                                                                                ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (16, 12, CAST(N'2021-07-13' AS Date), 375, N'amazing                                                                                                                                                                                                 ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (17, 12, CAST(N'2021-07-13' AS Date), 1325, N'good                                                                                                                                                                                                    ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (18, 10, CAST(N'2021-07-13' AS Date), 900, N'Äc pháº¿t                                                                                                                                                                                              ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (19, 10, CAST(N'2021-07-13' AS Date), 150, N'Æ°qeqwe                                                                                                                                                                                                 ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (20, 10, CAST(N'2021-07-13' AS Date), 400, N'TUYá»T                                                                                                                                                                                                 ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (21, 10, CAST(N'2021-07-13' AS Date), 200, N'aaaaa                                                                                                                                                                                                   ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (22, 12, CAST(N'2021-07-13' AS Date), 350, N'woaaaa                                                                                                                                                                                                  ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (23, 12, CAST(N'2021-07-13' AS Date), 100, N'svjagduasgd                                                                                                                                                                                             ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (24, 12, CAST(N'2021-07-13' AS Date), 175, N'123456                                                                                                                                                                                                  ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (25, 13, CAST(N'2021-07-13' AS Date), 300, N'123456                                                                                                                                                                                                  ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (26, 13, CAST(N'2021-07-13' AS Date), 450, N'123456789                                                                                                                                                                                               ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (27, 10, CAST(N'2021-07-13' AS Date), 150, N'flkdslkfsd                                                                                                                                                                                              ')
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[Order_detail] ON 

INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (1, 1, 1, N'Cảm ơn người lớn', 50, N'1.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (2, 1, 4, N'Có hai con mèo ngồi bên cửa sổ', 50, N'4.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (3, 1, 5, N'Bạn tài giỏi', 50, N'5.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (4, 2, 19, N'Cảm ơn người lớn', 50, N'1.jpg', 2)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (5, 3, 19, N'Cảm ơn người lớn', 50, N'1.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (6, 3, 20, N'Ut Quyên và tôi', 50, N'2.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (7, 3, 21, N'Những điều về trai Tây', 50, N'3.jpg', 2)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (8, 4, 19, N'Cảm ơn người lớn', 50, N'1.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (9, 4, 20, N'Ut Quyên và tôi', 50, N'2.jpg', 2)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (10, 5, 19, N'Cảm ơn người lớn', 50, N'1.jpg', 2)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (11, 6, 20, N'Ut Quyên và tôi', 50, N'2.jpg', 2)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (12, 7, 19, N'Cảm ơn người lớn', 50, N'1.jpg', 3)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (13, 8, 21, N'Những điều về trai Tây', 50, N'3.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (21, 15, 20, N'Ut Quyên và tôi', 50, N'2.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (22, 15, 21, N'Những điều về trai Tây', 50, N'3.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (23, 16, 26, N'Dán tường hoa trơn', 75, N'mong1.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (24, 16, 29, N'Gía sách hình sương cá', 100, N'chau1.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (25, 16, 31, N'Gía sách ô vuông', 100, N'chau3.jpg', 2)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (26, 17, 29, N'Gía sách hình sương cá', 100, N'chau1.jpg', 6)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (27, 17, 26, N'Dán tường hoa trơn', 75, N'mong1.jpg', 3)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (28, 17, 31, N'Gía sách ô vuông', 100, N'chau3.jpg', 5)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (34, 20, 20, N'Ut Quyên và tôi', 50, N'2.jpg', 3)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (35, 20, 21, N'Những điều về trai Tây', 50, N'3.jpg', 4)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (36, 20, 19, N'Cảm ơn người lớn', 50, N'1.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (41, 25, 19, N'Cảm ơn người lớn', 50, N'1.jpg', 3)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (42, 25, 20, N'Ut Quyên và tôi', 50, N'2.jpg', 3)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (43, 26, 20, N'Ut Quyên và tôi', 50, N'2.jpg', 5)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (44, 26, 21, N'Những điều về trai Tây', 50, N'3.jpg', 4)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (45, 27, 20, N'Ut QuyÃªn vÃ  tÃ´i', 50, N'2.jpg', 3)
SET IDENTITY_INSERT [dbo].[Order_detail] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (21, N'Những điều về trai Tây', 6, 50, N'3.jpg', N'Tập truyện ngắn với 12 câu chuyện là 12 niềm vui, 12 kỉ niệm dễ thương, 12 bài học giản dị mà sâu sắc…', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (22, N'Có hai con mèo ngồi bên cửa sổ', 8, 50, N'4.jpg', N'Tập truyện ngắn với 12 câu chuyện là 12 niềm vui, 12 kỉ niệm dễ thương, 12 bài học giản dị mà sâu sắc…', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (24, N'Những cô em gái', 10, 50, N'6.jpg', N'Tập truyện ngắn với 12 câu chuyện là 12 niềm vui, 12 kỉ niệm dễ thương, 12 bài học giản dị mà sâu sắc…', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (25, N'Tôi thấy hoa vàng trên cỏ xanh', 20, 50, N'7.jpg', N'Tập truyện ngắn với 12 câu chuyện là 12 niềm vui, 12 kỉ niệm dễ thương, 12 bài học giản dị mà sâu sắc…', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (26, N'Dán tường hoa trơn', 15, 75, N'mong1.jpg', N'Tranh dán tường 3d cửa sổ biển và hoa hồng ép lụa kim sa có sẵn keo CS34', 2)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (27, N'Dán tường hình hoa mặt trời', 30, 75, N'mong2.jpg', N'Tranh dán tường 3d cửa sổ biển và hoa hồng ép lụa kim sa có sẵn keo CS34', 2)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (28, N'Dán tường trơn xanh rêu', 25, 75, N'mong3.jpg', N'Tranh dán tường 3d cửa sổ biển và hoa hồng ép lụa kim sa có sẵn keo CS34', 2)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (29, N'Gía sách hình sương cá', 10, 100, N'chau1.jpg', N'Kệ Sách Hình Cây kích thước: 85*45cm.', 3)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (30, N'GÃ­a sÃ¡ch cho ngÆ°á»i trÆ°á»ng thÃ nh', 20, 100, N'chau2.jpg', N'Ká» gá» Äá» bÃ n Äá»±ng sÃ¡ch, tÃ i liá»u láº¯p ghÃ©p linh hoáº¡t - mÃ u ngáº«u nhiÃªn', 3)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (31, N'Gía sách ô vuông', 15, 100, N'chau3.jpg', N'Kệ tủ giá sách bằng gỗ hình cây, dùng để đựng sách vở và trang trí phòng. Hàng lắp ráp thông minh, đa năng, dễ dàng vận chuyển.', 3)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (32, N'Gía sách chill', 20, 100, N'chau4.jpg', N'Kệ Sách Để Sàn Gỗ Chống Ẩm Cao Cấp SIB Decor (178 x 80 x 24cm)', 3)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (34, N'Cảm ơn người lớn', 10, 50, N'1.jpg', N'Cảm ơn người lớn - một áng văn lãng mạn trong giọng hài hước đặc biệt “dành cho trẻ em, và những ai từng là trẻ em”..', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (35, N'Ut Quyên và tôi', 5, 50, N'2.jpg', N'Tập truyện ngắn với 12 câu chuyện là 12 niềm vui, 12 kỉ niệm dễ thương, 12 bài học giản dị mà sâu sắc…', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (36, N'Những điều về trai Tây', 6, 50, N'3.jpg', N'Tập truyện ngắn với 12 câu chuyện là 12 niềm vui, 12 kỉ niệm dễ thương, 12 bài học giản dị mà sâu sắc…', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (37, N'Có hai con mèo ngồi bên cửa sổ', 8, 50, N'4.jpg', N'Tập truyện ngắn với 12 câu chuyện là 12 niềm vui, 12 kỉ niệm dễ thương, 12 bài học giản dị mà sâu sắc…', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (38, N'Bạn tài giỏi', 4, 50, N'5.jpg', N'Tập truyện ngắn với 12 câu chuyện là 12 niềm vui, 12 kỉ niệm dễ thương, 12 bài học giản dị mà sâu sắc…', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (39, N'Những cô em gái', 10, 50, N'6.jpg', N'Tập truyện ngắn với 12 câu chuyện là 12 niềm vui, 12 kỉ niệm dễ thương, 12 bài học giản dị mà sâu sắc…', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (40, N'Tôi thấy hoa vàng trên cỏ xanh', 20, 50, N'7.jpg', N'Tập truyện ngắn với 12 câu chuyện là 12 niềm vui, 12 kỉ niệm dễ thương, 12 bài học giản dị mà sâu sắc…', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (41, N'Dán tường hoa trơn', 15, 75, N'mong1.jpg', N'Tranh dán tường 3d cửa sổ biển và hoa hồng ép lụa kim sa có sẵn keo CS34', 2)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (42, N'Dán tường hình hoa mặt trời', 30, 75, N'mong2.jpg', N'Tranh dán tường 3d cửa sổ biển và hoa hồng ép lụa kim sa có sẵn keo CS34', 2)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (43, N'Dán tường trơn xanh rêu', 25, 75, N'mong3.jpg', N'Tranh dán tường 3d cửa sổ biển và hoa hồng ép lụa kim sa có sẵn keo CS34', 2)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (44, N'Gía sách hình sương cá', 10, 100, N'chau1.jpg', N'Kệ Sách Hình Cây kích thước: 85*45cm.', 3)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (45, N'Gía sách cho người trưởng thành', 20, 100, N'chau2.jpg', N'Kệ gỗ để bàn đựng sách, tài liệu lắp ghép linh hoạt - màu ngẫu nhiên', 3)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (46, N'Gía sách ô vuông', 15, 100, N'chau3.jpg', N'Kệ tủ giá sách bằng gỗ hình cây, dùng để đựng sách vở và trang trí phòng. Hàng lắp ráp thông minh, đa năng, dễ dàng vận chuyển.', 3)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (47, N'Gía sách chill', 20, 100, N'chau4.jpg', N'Kệ Sách Để Sàn Gỗ Chống Ẩm Cao Cấp SIB Decor (178 x 80 x 24cm)', 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_orderDate]  DEFAULT (getdate()) FOR [orderDate]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([cusID])
REFERENCES [dbo].[Accounts] ([id])
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Categories] ([id])
GO
