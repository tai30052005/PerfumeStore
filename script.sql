USE [master]
GO
/****** Object:  Database [PRJ301]    Script Date: 3/21/2025 9:51:24 PM ******/
CREATE DATABASE [PRJ301]
GO
USE [PRJ301]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/21/2025 9:51:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[roleId] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/21/2025 9:51:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/21/2025 9:51:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[amount] [int] NULL,
	[accountId] [int] NOT NULL,
	[crateAt] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 3/21/2025 9:51:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[productId] [int] NOT NULL,
	[orderId] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/21/2025 9:51:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[image] [nvarchar](max) NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[description] [nvarchar](max) NULL,
	[categoryId] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/21/2025 9:51:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password], [roleId]) VALUES (1, N'admin', N'123', 1)
INSERT [dbo].[Account] ([id], [username], [password], [roleId]) VALUES (2, N'vominhtai1', N'123', 2)
INSERT [dbo].[Account] ([id], [username], [password], [roleId]) VALUES (3, N'vominhtai2', N'123', 2)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'man')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'woman')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'unisex')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'mini')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (1, 1, 8, 0)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (2, 1, 4, 0)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (3, 1, 12, 0)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (4, 1, 4, 0)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (5, 1, 3, 0)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (6, 11, 3, 0)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (7, 4, 3, 0)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (8, 1, 9, 0)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (3, N'Prada Luna Rossa Ocean EDP', N'https://missi.com.vn/wp-content/uploads/2025/02/Prada-Luna-Rossa-Ocean-EDP-01.jpg', 75, 105, N'Đừng để đánh lừa bởi tên gọi” là câu nói quen thuộc của đấng mày râu khi nhắc đến Prada Luna Rossa Ocean EDP. Với phiên bản EDP, bạn sẽ được trải nghiệm những khía cạnh sâu lắng, trầm ấm hơn đến từ đại dương bao la. Đây được xem là mùi hương trưởng thành hơn rất nhiều so với Prada Luna Rossa Ocean EDT.', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (4, N'Dior Sauvage EDP', N'https://missi.com.vn/wp-content/uploads/2018/05/Dior-Sauvage-EDP-1.jpg', 91, 144, N'Mở đầu bản giao hưởng là hương thơm tươi mát từ cam bergamot. Tạo cảm giác trẻ trung, dễ chịu và đầy cuốn hút. Tầng giữa chủ đạo là nhục đậu khấu, nên đó cũng là lý do mà được đánh giá tông hương fresh spicy. Là fresh từ cam và cay từ nhục đậu khấu. Tiếp đến là hương thơm quyến rũ của loài hoa Phong Lữ và hoa Oải Hương. Ngọt ngào thoang thoảng của các loài hoa và một chút ngay ngáy của cỏ Vetiver cùng chút nồng nàn của tiêu Tứ Xuyên. Khiến mùi hương trở nên ấn tượng mạnh mẽ, gây ấn tượng sâu sắc cho người đối diện.', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (5, N'Gucci Guilty Pour Homme Parfum', N'https://missi.com.vn/wp-content/uploads/2024/11/Gucci-Guilty-Pour-Homme-Parfum-01.jpg', 68, 109, N'Nếu như bạn yêu thích mùi hương nam tính của dòng nước hoa Gucci Guilty nhưng đang tìm kiếm mùi hương hiện đại, lịch lãm hơn thì bản Parfum chính là câu trả lời dành cho bạn. Gucci Guilty Pour Homme Parfum được nhà Gucci trình làng vào năm 2022 và vẫn giữ được sức nóng của mình cho đến thời điểm hiện tại.', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (6, N'Calvin Klein Defy EDT', N'https://missi.com.vn/wp-content/uploads/2024/07/Calvin-Klein-Defy-EDT-5.png', 96, 68, N'Defy của thương hiệu nổi tiếng Calvin Klein là chai nước hoa hương gỗ thơm và thảo mộc dành cho nam giới. Defy được ra mắt vào năm 2021. Với 3 tầng hương cực kì ấn tượng từ những nốt hương đơn giản: cam Bergamot, hoa oải hương, cỏ Vetiver và hổ phách, Calvin Klein Defy EDT mang đến phong cách tươi mới, cuốn hút và cực kì nam tính cho các chàng trai.', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (7, N'
Carolina Herrera Bad Boy Le Parfum', N'https://missi.com.vn/wp-content/uploads/2023/11/Carolina-Herrera-Bad-Boy-Le-Parfum-1.jpg', 36, 105, N'Carolina Herrera Bad Boy Le Parfum là chai nước hoa nam nổi tiếng của hãng Carolina Herrera được ra mắt vào năm 2021. Nếu bạn đã biết đến với một phiên bản nước hoa Bad Boy cổ điển thì Carolina Herrera Bad Boy Le Parfum sẽ được tái hiện giữa công thức truyền thống nhưng tạo ra sự mới lạ và độc đáo từ vũ trụ khứu giác.', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (8, N'
Versace Bright Crystal Parfum', N'https://missi.com.vn/wp-content/uploads/2025/03/Versace-Bright-Crystal-Parfum-01.jpg', 45, 110, N'Versace Bright Crystal là dòng nước hoa nữ kinh điển được đông đảo chị em yêu mến. Để chiều lòng giới mộ điệu nước hoa, nhà Versace đã cho ra mắt bản Parfum với hương thơm dày hơn, ấn tượng hơn cùng độ bám tỏa cực kì tốt. Vậy Versace Bright Crystal Parfum mang đến cho bạn hương thơm như thế nào?', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (9, N'
Parfums De Marly Palatine EDP', N'https://missi.com.vn/wp-content/uploads/2025/02/Parfums-De-Marly-Palatine-EDP-01.jpg', 66, 167, N'Nhà Parfums de Marly đã để lại dấu ấn trong lòng giới mộ điệu nước hoa bởi những hương thơm cực kì nữ tính theo phong cách tiểu thư kiêu kì. Với phiên bản nước hoa mới nhất vừa được ra mắt vào năm 2024 – Parfums De Marly Palatine EDP, bạn sẽ tìm thấy hương thơm nữ tính đặc trưng của hãng nhưng với phong thái độc lập, tự tin dành cho những cô nàng hiện đại.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (10, N'
Lancome Idole Now EDP', N'https://missi.com.vn/wp-content/uploads/2025/02/Lancome-Idole-Now-EDP-01.jpg', 21, 233, N'Một trong những thành phần quen thuộc của nước hoa nữ chính là hoa hồng. Nhưng với sự kết hợp hoàn hảo, bạn sẽ tìm thấy hương thơm hoa hồng đầy ấn tượng, vừa phải với Lancome Idole Now EDP. ', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (11, N'
Prada Paradoxe Virtual Flower EDP', N'https://missi.com.vn/wp-content/uploads/2025/02/Prada-Paradoxe-Virtual-Flower-EDP-01.jpg', 16, 116, N'Một mùi hương mới vừa được nhà Prada cho ra mắt vào tháng 8/2024 chính là Prada Paradoxe Virtual Flower EDP. Tiếp nối line nước hoa nữ Prada Paradoxe đình đám, phiên bản Virtual Flower vẫn giữ trọn được những nốt hương quyến rũ, sang trọng nhưng sẽ nhẹ nhàng, tươi mát hơn cho các nàng dễ dàng sử dụng.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (12, N'Giorgio Armani Rose Milano EDT', N'https://missi.com.vn/wp-content/uploads/2025/01/Giorgio-Armani-Rose-Milano-EDT-01.jpg', 85, 166, N'Một mùi hương có thể chiều lòng phái đẹp kể cả những người khó tính nhất chỉ có thể là Giorgio Armani Rose Milano EDT. Em này là dòng nước hoa nữ được hãng Giorgio Armani ra mắt vào năm 2020. Bên cạnh thiết kế sang trọng với màu hồng pastel xinh xắn thì mùi hương của em này vô cùng nịnh mũi, dễ dùng mà mọi cô nàng đều phù hợp.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (13, N'
Diptyque Fleur De Peau EDP', N'https://missi.com.vn/wp-content/uploads/2025/02/Diptyque-Fleur-De-Peau-EDP-01.jpg', 18, 186, N'Diptyque Fleur De Peau EDP là dòng nước hoa unisex được nhà Diptyque cho ra mắt vào năm 2018. Ngay từ khi vừa ra mắt, em này đã chinh phục đông đảo giới mộ điệu nước hoa bởi hương thơm nhẹ nhàng nhưng vẫn rất đặc biệt và để lại ấn tượng cao cho những ai từng ngửi qua hương thơm này.', 3)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (14, N'MFK Oud Satin Mood Extrait De Parfum', N'https://missi.com.vn/wp-content/uploads/2025/01/MFK-Oud-Satin-Mood-Extrait-De-Parfum-01.jpg', 65, 308, N'Một chai nước hoa unisex cao cấp, quyền lực được ra mắt vào năm 2017 và vẫn giữ được sức nóng đến thời điểm hiện tại chính là MFK Oud Satin Mood Extrait De Parfum. Không chỉ sở hữu thiết kế tinh tế, đẳng cấp, mùi hương của Oud Satin Mood bản Extrait De Parfum còn có khả năng thu hút những người kề cận và tạo nên sự lưu luyến mãi không thôi.', 3)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (15, N'Clive Christian Crab Apple Blossom', N'https://missi.com.vn/wp-content/uploads/2025/01/Clive-Christian-Crab-Apple-Blossom-01.jpg', 51, 248, N'Nổi bật trong những dòng nước hoa unisex đình đám của nhà Clive Christian phải nhắc đến em Clive Christian Crab Apple Blossom. Em này được giới mộ điệu tích cực săn đón bởi mùi hương sang trọng, mát mẻ và không bị trùng lập với bất kì hương thơm nào. ', 3)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (16, N'
Nice Bergamote Antoine Maisondieu', N'https://missi.com.vn/wp-content/uploads/2023/11/Nice-Bergamote-Antoine-Maisondieu-1.jpg', 44, 123, N'Nice Bergamote Antoine Maisondieu là một hương thơm unisex hòa quyện giữa sự tinh tế và tươi mới, mang lại cho bạn một cảm giác dễ chịu và gần gũi với tự nhiên.', 3)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (17, N'
Once Etheria', N'https://missi.com.vn/wp-content/uploads/2024/05/Once-Etheria-1.jpg', 10, 60, N'Once Etheria là một trong những dòng nước hoa unisex được ra mắt năm 2023, dưới sự sáng tạo của nhà pha chế tài năng Viktorija Siegel. Với sứ mệnh mang đến một trải nghiệm hương thơm độc đáo và khác biệt. Once Etheria không chỉ là một loại nước hoa mà còn là một tác phẩm nghệ thuật được tạo ra từ sự tinh tế và đam mê.', 3)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (24, N'Burberry Hero EDT', N'https://missi.com.vn/wp-content/uploads/2023/10/Burberry-Hero-EDT-7.png', 50, 11, N'Là mùi hương dành cho nam giới, được ra mắt vào năm 2021 đánh dấu sự trở lại đầy ngoạn mục dành cho các đấng mày râu. Burberry Hero EDT đem đến một trải nghiệm mùi hương hoàn hảo với hương gỗ thơm kết hợp cùng sự cay nồng, ấm áp và dễ chịu.', 4)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (25, N'
Gucci Guilty Pour Homme EDP', N'https://missi.com.vn/wp-content/uploads/2022/06/gucci-guilty-pour-homme-edp.png', 47, 107, N'Gucci Guilty Pour Homme EDP là phiên bản nước hoa mới được ra mắt trong năm 2020. Đây được xem là bản nước hoa nồng nàn, đậm đà hơn bản Eau de Toilette vốn đã quá nổi tiếng và được ưa chuộng trong nhiều năm qua.', 4)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (27, N'Giorgio Armani My Way EDP', N'https://missi.com.vn/wp-content/uploads/2022/04/Giorgio-Armani-My-Way-EDP.jpg', 23, 116, N'Giorgio Armani My Way còn là mùi hương của những quý cô dịu dàng, tinh tế pha chút ngô nghê đã tạo được ấn tượng đặc biệt với các tín đồ yêu mùi hương. Giorgio Armani My Way sở hữu mùi hương nữ tính, nhẹ nhàng và tinh tế, sang trọng làm cho phái đẹp không thể nào không mê đắm. Hương chủ đạo của là hương hoa cỏ ngọt ngào, quyến rũ là điều tạo nên sức hấp dẫn riêng cho dòng nước hoa này.', 4)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (28, N'Moschino Toy 2 Pearl EDP', N'https://missi.com.vn/wp-content/uploads/2024/10/Moschino-Toy-2-Pearl-EDP-01.jpg', 33, 83, N'Nếu như bạn yêu thích nước hoa mùi cam chanh tươi mát thì khả năng cao bạn sẽ yêu thích Moschino Toy 2 Pearl EDP ngay lần xịt đầu tiên. Em này là chai nước hoa unisex đình đám được nhà Moschino ra mắt vào năm 2023. Trái ngược với những chai nước hoa mùi cam chanh hơi sắc thường thấy thì nốt đầu của Moschino Toy 2 Pearl EDP hiện lên vô cùng mềm mại, chua chua ngọt ngọt đầy tươi mát của Chanh vàng, kem trái cây và rau Oregano.', 4)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (1025, N'Armaf Ventana Marine EDP', N'https://missi.com.vn/wp-content/uploads/2024/11/Armaf-Ventana-Marine-EDP-01.jpg', 46, 53, N'Ngay từ khi vừa ra mắt, Armaf Ventana Marine EDP chính là cái tên được đấng mày râu tích cực săn lùng bởi hương thơm dễ chịu, ấn tượng và có mức giá vô cùng tiết kiệm. Bản Ventana Marine mở đầu với nốt tươi sáng, mát mẻ cùng vị ngọt từ Cam Bergamot, Cam Sicilia, thanh yên, bạch đậu khấu và tinh dầu lá chanh.', 3)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (1026, N'Gucci Flora Gorgeous Jasmine', N'https://missi.com.vn/wp-content/uploads/2022/11/Gucci-Flora-Gorgeous-Jasmine.jpg', 45, 116, N'Gucci Flora Gorgeous Jasmine sẽ đưa bạn đến một khu vườn tươi tốt, đầy những bông hoa đẹp nhất. Hương hoa của nó sẽ làm tươi sáng mỗi ngày của bạn với tính cách vui tươi của chúng.', 4)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [name]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([id], [name]) VALUES (2, N'user')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [PRJ301] SET  READ_WRITE 
GO
