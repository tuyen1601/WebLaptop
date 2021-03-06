USE [WebsiteLaptop]
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [GioiTinh], [NgaySinh]) VALUES (75, N'dao', N'dao test', N'123', N'quangdao@gmail.com', N'kim bình', N'0123', N'nam', CAST(N'2000-04-02' AS Date))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDonHang], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1, NULL, NULL, CAST(N'2021-06-05T16:55:42.020' AS DateTime), NULL, 75)
INSERT [dbo].[DonHang] ([MaDonHang], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (2, NULL, NULL, CAST(N'2021-06-05T16:58:57.243' AS DateTime), NULL, 75)
INSERT [dbo].[DonHang] ([MaDonHang], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3, NULL, NULL, CAST(N'2021-06-05T19:00:39.293' AS DateTime), NULL, 75)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (1, N'Doanh Nhân')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (2, N'Cá Nhân ')
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
GO
SET IDENTITY_INSERT [dbo].[HangSX] ON 

INSERT [dbo].[HangSX] ([MaHangSX], [TenHangSX], [DiaChi], [DienThoai]) VALUES (1, N'Dell', N'HaNoi', N'0122')
INSERT [dbo].[HangSX] ([MaHangSX], [TenHangSX], [DiaChi], [DienThoai]) VALUES (2, N'HP', N'Hà Nội', N'123')
INSERT [dbo].[HangSX] ([MaHangSX], [TenHangSX], [DiaChi], [DienThoai]) VALUES (3, N'ASUS', N'Hà nội', N'456')
INSERT [dbo].[HangSX] ([MaHangSX], [TenHangSX], [DiaChi], [DienThoai]) VALUES (4, N'MacBook', N'Hà Nội', N'1234')
SET IDENTITY_INSERT [dbo].[HangSX] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (14, N'HP 15s', CAST(35000 AS Decimal(18, 0)), N'Mới', N'0 (1).jpg', NULL, 23, 2, 2)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (15, N'lutitude E5570', CAST(13900000 AS Decimal(18, 0)), N'cũ, nhập khẩu mỹ', N'0 (2).jpg', NULL, 12, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (17, N'Asus ROG', CAST(12000 AS Decimal(18, 0)), N'mới', N'0 (3).jpg', NULL, 4, 3, 2)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (18, N'Macbook Air', CAST(25000 AS Decimal(18, 0)), N'Chip', N'0 (4).jpg', NULL, 3, 4, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (19, N'Dell Precision 5570', CAST(24500 AS Decimal(18, 0)), N'máy trạm cao cấp siêu mỏng', N'0 (5).jpg', NULL, 2, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (20, N'Dell XPS 15 7590', CAST(29500 AS Decimal(18, 0)), N'I5 9300H / RAM 8GB / VGA GTX 1650 / SSD 256GB 15,6"FHD', N'0 (6).jpg', NULL, 3, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (21, N'DELL Latitude E7470 ', CAST(10500 AS Decimal(18, 0)), N'I5 - 6300U / RAM 8G / SSD 256GB / 14.0"FHD', N'0 (7).jpg', NULL, 3, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (22, N'DELL Precision 7750 Mobile Workstation', CAST(53500 AS Decimal(18, 0)), N'i7 10850H / RAM 32GB / SSD 512 GB / RTX 3000 / 17.3"FHD', N'0 (8).jpg', NULL, 2, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (23, N'DELL XPS 13 9350 ', CAST(285000 AS Decimal(18, 0)), N'I5 - 1135G7 / RAM 8GB / M.2 256GB / 13.3"FHD / Iris Xe Graphics', N'0 (9).jpg', NULL, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (24, N'Laptop Cũ Dell Precision ', CAST(18000 AS Decimal(18, 0)), N'7510 Core i7- 6820HQ| Ram 8GB| SSD 256G| VGA M1000M| Màn 15.6 Full HD', N'0 (10).jpg', NULL, 2, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (25, N'Dell Latitude 7410', CAST(24500 AS Decimal(18, 0)), N' Core i5 10310U | RAM 16GB | SSD 256GB | 14.0″ FHD | Win 10 Pro', N'0 (11).jpg', NULL, 2, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (26, N'Dell Precision 7740 ', CAST(47000 AS Decimal(18, 0)), N'Core i7-9750H| Ram 8G| SSD 256g| Card RTX 3000 (6GB)| FHD', N'0 (12).jpg', NULL, 2, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (27, N'Laptop Cũ Dell Inspiron 7559 Gaming ', CAST(14290 AS Decimal(18, 0)), N'i5 6300HQ | RAM 8 GB |SSD 120GB+ HDD 500GB | 15.6” Full HD | VGA GTX 960m (4gb)', N'0 (13).jpg', NULL, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (28, N'Laptop Cũ Dell Latitude 7490 ', CAST(15500 AS Decimal(18, 0)), N'i5 – 8250U/ 8350U| RAM 8GB| SSD 256GB| 14.0 FHD| CARD ON', N'0 (14).jpg', NULL, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (29, N'Dell Latitude 7390 ', CAST(15990 AS Decimal(18, 0)), N'Core i5*8350U(8250U) | RAM 8GB| SSD 256GB| 13.3inch FHD Touch', N'0 (15).jpg', NULL, 2, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (30, N'Dell Latitude E5491 ', CAST(17900 AS Decimal(18, 0)), N'Core i5-8400H / RAM 8GB / SSD 256GB/ FHD/ NVIDIA GeForce MX130', N'0 (16).jpg', NULL, 2, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (31, N'[NEW ] Dell Gaming G5 15 5500 ', CAST(21500 AS Decimal(18, 0)), N' I5-10300H | RAM 8GB | SSD 256GB | FHD 120hz | GTX 1650 Ti', N'0 (17).jpg', NULL, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (32, N'Laptop Cũ Dell Latitude E5550 ', CAST(8500 AS Decimal(18, 0)), N'Core™ i5 – 5300U| RAM 8GB| 240G SSD| Card on | 15”6 HD', N'0 (18).jpg', NULL, 2, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (33, N'Laptop Cũ Dell latitude E5570', CAST(9990 AS Decimal(18, 0)), N'i7*6820HQ| RAM 8G| Ổ SSD 256G| AMD Radeon R7 M370| MÀN 15.6 FULL HD', N'0 (19).jpg', NULL, 4, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (34, N'[ LIKE NEW ] Dell XPS 17 9700 (2020)', CAST(51500 AS Decimal(18, 0)), N'Core i7 10750H | RAM 16GB | SSD 512GB | GTX 1650 Ti | FHD+', N'0 (20).jpg', NULL, 2, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (35, N'Laptop Cũ Dell Latitude 7480', CAST(11200 AS Decimal(18, 0)), N' i5-6300U/ RAM 8G/ Ổ SSD 256GB/ MÀN 14.0 Full HD/ Card On', N'0 (23).jpg', NULL, 1, 1, 2)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (36, N'Dell XPS 13 9310 2in1 ', CAST(34500 AS Decimal(18, 0)), N' Core i5*1135G7 | 8GB LPDDR4X | 256GB M.2 NVMe | 13.4″ FHD IPS (2020)', N'0 (24).jpg', NULL, 2, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (37, N'Laptop Cũ HP zbook 15 g3 ', CAST(17200 AS Decimal(18, 0)), N'Core i7 6820HQ/ RAM 8GB/ SSD 256GB/ 15.6″ FHD/ CARD NVIDIA QUADRO M1000M', N'0 (25).jpg', NULL, 2, 2, 2)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (38, N'Laptop Cũ Hp Elitebook 840 G3 Ultrabook ', CAST(9800 AS Decimal(18, 0)), N'i5 6300U | Like new 99% | RAM 8GB DDR4 | SSD 256GB | 14 Inches Full HD| Card on', N'0 (26).jpg', NULL, 2, 2, 2)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (39, N'Laptop cũ HP ELITEBOOK 840 G4 ', CAST(10800 AS Decimal(18, 0)), N'CORE I5 7300U 2.6GHz / RAM 8GB DDR4 2133MHz / 256GB SSD/ 14″ FHD', N'0 (27).jpg', NULL, 2, 2, 2)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (40, N'HP EliteBook 850 G6 ', CAST(19990 AS Decimal(18, 0)), N'Core i5 8265U / RAM 8GB / SSD 256GB / FHD / Win10 Pro', N'0 (28).jpg', NULL, 2, 2, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (41, N'LAPTOP HP PAVILION 15 CW1063WM ', CAST(13900 AS Decimal(18, 0)), N' Chip AMD Ryzen 5 3500U / Ram 8GB / SSD 128GB+1TB / 15.6 FHD', N'0 (29).jpg', NULL, 1, 2, 2)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (42, N'Laptop cũ HP Elitebook 840 g5 ', CAST(14000 AS Decimal(18, 0)), N'Core i5-8250U| Ram 8GB| SSD 256GB| 14″ FHD| Card on', N'0 (30).jpg', NULL, 1, 2, 2)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (43, N'HP Probook 640 G4 ', CAST(10500 AS Decimal(18, 0)), N'I5 – 7200U RAM 8GB/ SSD 256GB/ MÀN FULL HD/ CARD ON', N'0 (31).jpg', NULL, 2, 2, 2)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (44, N'HP ZBook Studio G5 ', CAST(34500 AS Decimal(18, 0)), N'i7-8750H / RAM 16GB / SSD 512GB / 15.6 FHD IPS / P1000', N'0 (32).jpg', NULL, 2, 2, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (45, N'Laptop Cũ HP ZBOOK 15 G2', CAST(12500 AS Decimal(18, 0)), N' i7-4810MQ | RAM 8GB | SSD 256 GB | 15.6” FHD | VGA NVIDIA K1100M', N'0 (33).jpg', NULL, 2, 2, 2)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (46, N'Laptop cũ HP ELITEBOOK 830 G5 ', CAST(14900 AS Decimal(18, 0)), N'CORE I5- 8250U/ RAM 8GB DDR4/ SSD 250GB/ MÀN 13″ FHD', N'0 (34).jpg', NULL, 2, 2, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (47, N'HP ZBOOK STUDIO G7', CAST(46800 AS Decimal(18, 0)), N'CORE I9-10885H | RAM16GB | NVIDIA QUADRO T1000 | 256 GB M.2 NVMe | FHD IPS (1920 x 1080)', N'0 (35).jpg', NULL, 2, 2, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (48, N'[NEW] Asus ZenBook 14 Q407IQ ', CAST(16900 AS Decimal(18, 0)), N'Ryzen 5 4500U | RAM 8GB | SSD 256GB | Geforce MX 350 | FHD', N'0 (36).jpg', NULL, 2, 3, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (49, N'Laptop cũ Gaming Asus ROG Strix SCAR GL503', CAST(23000 AS Decimal(18, 0)), N'Core i7-8750H /RAM 8GB, HDD 1TB + SSD 128GB, VGA 4GB NVIDIA GTX 1050Ti, 15.6 inch, FHD', N'0 (37).jpg', NULL, 2, 3, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (50, N'Laptop Cũ Asus GL553VD-FY175', CAST(17890 AS Decimal(18, 0)), N' i5-7300HQ| 8GB| HDD 1TB| NVIDIA GTX 1050 4GB| 15.6 inch FULL HD', N'0 (38).jpg', NULL, 2, 3, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (51, N'Laptop Cũ Asus FX553VD-DM304', CAST(16890 AS Decimal(18, 0)), N' i5-7300HQ| 4GB| HDD 1TB| NVIDIA GTX 1050 | 15.6 inch FULL HD', N'0 (39).jpg', NULL, 2, 3, 2)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (52, N'Asus ROG GL702VSK', CAST(32000 AS Decimal(18, 0)), N' i7-7700HQ| Ram 16GB| HDD 1TB| FHD| GTX 1070 (8GB)', N'0 (40).jpg', NULL, 2, 3, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (53, N'Laptop Apple MacBook Air ', CAST(34990 AS Decimal(18, 0)), N'M1 2020 8GB/512GB/Space Grey (MGN73SA/A)', N'0 (41).jpg', NULL, 2, 4, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (54, N'Laptop MacBook Pro ', CAST(36990 AS Decimal(18, 0)), N'M1 2020/8GB/512GB/Silver (MYDC2SA/A', N'0 (42).jpg', NULL, 2, 4, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (55, N'Laptop Apple MacBook Air ', CAST(33990 AS Decimal(18, 0)), N'M1 2020 8GB/512GB/Gold (MGNE3SA/A) ', N'0 (1).jpg', NULL, 2, 4, 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
INSERT [dbo].[ChiTietDonHang] ([MaLap], [MaDonHang], [SoLuong], [DonGia]) VALUES (14, 1, 1, N'35000     ')
INSERT [dbo].[ChiTietDonHang] ([MaLap], [MaDonHang], [SoLuong], [DonGia]) VALUES (14, 2, 1, N'35000     ')
INSERT [dbo].[ChiTietDonHang] ([MaLap], [MaDonHang], [SoLuong], [DonGia]) VALUES (14, 3, 3, N'35000     ')
INSERT [dbo].[ChiTietDonHang] ([MaLap], [MaDonHang], [SoLuong], [DonGia]) VALUES (17, 3, 1, N'12000     ')
GO
INSERT [dbo].[US] ([username], [password], [fullname]) VALUES (N'dao', N'1', N'quangdao')
INSERT [dbo].[US] ([username], [password], [fullname]) VALUES (N'ducanh', N'12345', N'nguyenducanh')
GO
