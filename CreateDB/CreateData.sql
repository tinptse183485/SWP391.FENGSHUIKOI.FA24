USE SWP391_FengShuiKoiConsulting_DB
GO
-- Insert data into Element table
INSERT INTO Element (Element, Mutualism) VALUES (N'Thổ',N'Kim');
INSERT INTO Element (Element, Mutualism) VALUES (N'Kim',N'Thủy');
INSERT INTO Element (Element, Mutualism) VALUES (N'Thủy',N'Mộc');
INSERT INTO Element (Element, Mutualism) VALUES (N'Mộc',N'Hỏa');
INSERT INTO Element (Element, Mutualism) VALUES (N'Hỏa',N'Thổ');

-- Insert data into Account table
INSERT INTO Account (UserID, Password, Role, Email, Status)
VALUES 
('hau', '123', 'Admin', 'hauhnse183392@fpt.edu.vn', 'Active'),
('nhan', '123', 'Member', 'nhannbse183392@fpt.edu.vn', 'Active'),
('khoa', '123', 'Member', 'nhannbse183392@fpt.edu.vn', 'Active'),
('huy', '123', 'Member', 'nhannbse183392@fpt.edu.vn', 'Active'),
('tin', '123', 'Member', 'nhannbse183392@fpt.edu.vn', 'Active');

-- Insert data into Member table
INSERT INTO Member (Name, Birthday, UserID)
VALUES 
(N'Huỳnh Ngọc Hậu', '1990-01-01', 'hau'),
(N'Nguyễn Bá Nhân', '1995-05-15', 'nhan'),
(N'Nguyễn Quốc Huy', '1995-05-15', 'huy'),
(N'Trương Đình Khoa', '1995-05-15', 'khoa'),
(N'Phạm Trung Tín', '2000-10-20', 'tin');

-- Insert data into Shape table
INSERT INTO Shape (Shape,image)
VALUES 
(N'Hình tròn','hinhtron.jpg'),
(N'Hình vuông','Square.jpg'),
(N'Hình chữ nhật','hinhchunhat.jpg'),
(N'Hình lượn sóng','hinhluonsong.jpg'),
(N'Hình tam giác','triangular_pond.jpg');

-- Insert data into GoodShape table
INSERT INTO GoodShape (Shape,Element)
VALUES 
(N'Hình vuông',N'Kim'),
(N'Hình tròn',N'Kim'),
(N'Hình lượn sóng',N'Mộc'),
(N'Hình chữ nhật',N'Mộc'),
(N'Hình tròn',N'Thủy'),
(N'Hình lượn sóng',N'Thủy'),
(N'Hình tam giác',N'Hỏa'),
(N'Hình chữ nhật',N'Hỏa'),
(N'Hình tam giác',N'Thổ'),
(N'Hình vuông',N'Thổ');

-- Insert data into PointOfShape table
INSERT INTO PointOfShape (Element,Shape,PointOfShape)
VALUES 
(N'Kim',N'Hình tròn',0.75),
(N'Kim',N'Hình vuông',1),
(N'Kim',N'Hình chữ nhật',0.25),
(N'Kim',N'Hình lượn sóng',0.5),
(N'Kim',N'Hình tam giác',0.25),
(N'Mộc',N'Hình tròn',0.25),
(N'Mộc',N'Hình vuông',0.25),
(N'Mộc',N'Hình chữ nhật',0.75),
(N'Mộc',N'Hình lượn sóng',1),
(N'Mộc',N'Hình tam giác',0.5),
(N'Thủy',N'Hình tròn',1),
(N'Thủy',N'Hình chữ nhật',0.5),
(N'Thủy',N'Hình lượn sóng',0.75),
(N'Thủy',N'Hình tam giác',0.25),
(N'Thủy',N'Hình vuông',0.25),
(N'Thổ',N'Hình tròn',0.5),
(N'Thổ',N'Hình vuông',0.75),
(N'Thổ',N'Hình chữ nhật',0.25),
(N'Thổ',N'Hình lượn sóng',0.25),
(N'Thổ',N'Hình tam giác',1),
(N'Hỏa',N'Hình tròn',0.25),
(N'Hỏa',N'Hình chữ nhật',1),
(N'Hỏa',N'Hình lượn sóng',0.25),
(N'Hỏa',N'Hình tam giác',0.75),
(N'Hỏa',N'Hình vuông',0.5);

-- Insert data into Package table
INSERT INTO Package (Rank, Duration, Description, price)
VALUES 
(N'Dimond', 30, N'Hình ảnh lớn, xuất hiện ở đầu trang, tần suất xuất hiện nhiều, phù hợp với các doanh nghiệp lớn muốn quảng bá mạnh mẽ.', 6000000),
(N'Gold', 30, N'Hình ảnh vừa, xuất hiện ở dưới gói Dimond, tần suất xuất hiện vừa, phù hợp với doanh nghiệp vừa và nhỏ muốn có sự hiện diện ổn định.', 4000000),
(N'Silver', 30, N'Hình ảnh nhỏ, chỉ xuất hiện ở trang đăng tin, tần suất xuất hiện ít, phù hợp với doanh nghiệp cá nhân hoặc startup muốn tiết kiệm chi phí.', 2000000);

-- Insert data into LifePalace table
INSERT INTO LifePalace (LifePalace)
VALUES 
(N'Càn'),
(N'Đoài'),
(N'Cấn'),
(N'Khôn'),
(N'Ly'),
(N'Khảm'),
(N'Tốn'),
(N'Chấn');

-- Insert data into Direction table
INSERT INTO Direction (Direction)
VALUES 
(N'Đông Bắc'),
(N'Tây'),
(N'Tây Bắc'),
(N'Tây Nam'),
(N'Bắc'),
(N'Đông Nam'),
(N'Nam'),
(N'Đông');

-- Insert data into LifePalace_Direction table
INSERT INTO LifePalace_Direction (LifePalace,Direction,EightMansions,PointOfDirection,Description)
VALUES 
(N'Càn',N'Tây',N'Sinh khí',1,N'Đây là hướng mang lại may mắn nhất cho chủ nhà và tạo ra khí tốt.'),
(N'Càn',N'Đông Bắc',N'Thiên y',1,N'Đây là hướng tập trung vào sức khỏe, có thể giảm bớt bệnh tật và mang lại sự thịnh vượng.'),
(N'Càn',N'Tây Nam',N'Diên niên',0.75,N'Hướng mang đến sự hòa thuận, thúc đẩy sự nghiệp và gia tăng tuổi thọ.'),
(N'Càn',N'Tây Bắc',N'Phục vị',0.5,N'Hướng giúp cải thiện quan hệ gia đình và mang lại bình yên.'),
(N'Càn',N'Nam',N'Tuyệt mệnh',0.25,N'Hướng không tốt cho sự phát triển, gây ra bất hòa và đau buồn.'),
(N'Càn',N'Đông',N'Ngũ quỷ',0.25,N'Hướng gây trở ngại trong quan hệ tình cảm và có nhiều thử thách, bệnh tật.'),
(N'Càn',N'Bắc',N'Lục sát',0.25,N'Hướng dễ hao tài, tốn của và thành viên trong gia đình gặp rủi ro, tai nạn.'),
(N'Càn',N'Đông Nam',N'Họa hại',0,N'Hướng ảnh hưởng không tốt đến sức khỏe và gây rủi ro cho gia chủ.'),

(N'Đoài',N'Tây Bắc',N'Sinh khí',1,N'Đây là hướng mang lại may mắn nhất cho chủ nhà và tạo ra khí tốt.'),
(N'Đoài',N'Tây Nam',N'Thiên y',1,N'Đây là hướng tập trung vào sức khỏe, có thể giảm bớt bệnh tật và mang lại sự thịnh vượng.'),
(N'Đoài',N'Đông Bắc',N'Diên niên',0.75,N'Hướng mang đến sự hòa thuận, thúc đẩy sự nghiệp và gia tăng tuổi thọ.'),
(N'Đoài',N'Tây',N'Phục vị',0.5,N'Hướng giúp cải thiện quan hệ gia đình và mang lại bình yên.'),
(N'Đoài',N'Đông',N'Tuyệt mệnh',0.25,N'Hướng không tốt cho sự phát triển, gây ra bất hòa và đau buồn.'),
(N'Đoài',N'Nam',N'Ngũ quỷ',0.25,N'Hướng gây trở ngại trong quan hệ tình cảm và có nhiều thử thách, bệnh tật.'),
(N'Đoài',N'Đông Nam',N'Lục sát',0.25,N'Hướng dễ hao tài, tốn của và thành viên trong gia đình gặp rủi ro, tai nạn.'),
(N'Đoài',N'Bắc',N'Họa hại',0,N'Hướng ảnh hưởng không tốt đến sức khỏe và gây rủi ro cho gia chủ.'),

(N'Ly',N'Đông',N'Sinh khí',1,N'Đây là hướng mang lại may mắn nhất cho chủ nhà và tạo ra khí tốt.'),
(N'Ly',N'Đông Nam',N'Thiên y',1,N'Đây là hướng tập trung vào sức khỏe, có thể giảm bớt bệnh tật và mang lại sự thịnh vượng.'),
(N'Ly',N'Bắc',N'Diên niên',0.75,N'Hướng mang đến sự hòa thuận, thúc đẩy sự nghiệp và gia tăng tuổi thọ.'),
(N'Ly',N'Nam',N'Phục vị',0.5,N'Hướng giúp cải thiện quan hệ gia đình và mang lại bình yên.'),
(N'Ly',N'Tây Bắc',N'Tuyệt mệnh',0.25,N'Hướng không tốt cho sự phát triển, gây ra bất hòa và đau buồn.'),
(N'Ly',N'Tây',N'Ngũ quỷ',0.25,N'Hướng gây trở ngại trong quan hệ tình cảm và có nhiều thử thách, bệnh tật.'),
(N'Ly',N'Tây Nam',N'Lục sát',0.25,N'Hướng dễ hao tài, tốn của và thành viên trong gia đình gặp rủi ro, tai nạn.'),
(N'Ly',N'Đông Bắc',N'Họa hại',0,N'Hướng ảnh hưởng không tốt đến sức khỏe và gây rủi ro cho gia chủ.'),

(N'Khảm',N'Đông Nam',N'Sinh khí',1,N'Đây là hướng mang lại may mắn nhất cho chủ nhà và tạo ra khí tốt.'),
(N'Khảm',N'Đông',N'Thiên y',1,N'Đây là hướng tập trung vào sức khỏe, có thể giảm bớt bệnh tật và mang lại sự thịnh vượng.'),
(N'Khảm',N'Nam',N'Diên niên',0.75,N'Hướng mang đến sự hòa thuận, thúc đẩy sự nghiệp và gia tăng tuổi thọ.'),
(N'Khảm',N'Bắc',N'Phục vị',0.5,N'Hướng giúp cải thiện quan hệ gia đình và mang lại bình yên.'),
(N'Khảm',N'Tây Nam',N'Tuyệt mệnh',0.25,N'Hướng không tốt cho sự phát triển, gây ra bất hòa và đau buồn.'),
(N'Khảm',N'Đông Bắc',N'Ngũ quỷ',0.25,N'Hướng gây trở ngại trong quan hệ tình cảm và có nhiều thử thách, bệnh tật.'),
(N'Khảm',N'Tây Bắc',N'Lục sát',0.25,N'Hướng dễ hao tài, tốn của và thành viên trong gia đình gặp rủi ro, tai nạn.'),
(N'Khảm',N'Tây',N'Họa hại',0,N'Hướng ảnh hưởng không tốt đến sức khỏe và gây rủi ro cho gia chủ.'),

(N'Chấn',N'Nam',N'Sinh khí',1,N'Đây là hướng mang lại may mắn nhất cho chủ nhà và tạo ra khí tốt.'),
(N'Chấn',N'Bắc',N'Thiên y',1,N'Đây là hướng tập trung vào sức khỏe, có thể giảm bớt bệnh tật và mang lại sự thịnh vượng.'),
(N'Chấn',N'Đông Nam',N'Diên niên',0.75,N'Hướng mang đến sự hòa thuận, thúc đẩy sự nghiệp và gia tăng tuổi thọ.'),
(N'Chấn',N'Đông',N'Phục vị',0.5,N'Hướng giúp cải thiện quan hệ gia đình và mang lại bình yên.'),
(N'Chấn',N'Tây',N'Tuyệt mệnh',0.25,N'Hướng không tốt cho sự phát triển, gây ra bất hòa và đau buồn.'),
(N'Chấn',N'Tây Bắc',N'Ngũ quỷ',0.25,N'Hướng gây trở ngại trong quan hệ tình cảm và có nhiều thử thách, bệnh tật.'),
(N'Chấn',N'Đông Bắc',N'Lục sát',0.25,N'Hướng dễ hao tài, tốn của và thành viên trong gia đình gặp rủi ro, tai nạn.'),
(N'Chấn',N'Tây Nam',N'Họa hại',0,N'Hướng ảnh hưởng không tốt đến sức khỏe và gây rủi ro cho gia chủ.'),

(N'Tốn',N'Bắc',N'Sinh khí',1,N'Đây là hướng mang lại may mắn nhất cho chủ nhà và tạo ra khí tốt.'),
(N'Tốn',N'Nam',N'Thiên y',1,N'Đây là hướng tập trung vào sức khỏe, có thể giảm bớt bệnh tật và mang lại sự thịnh vượng.'),
(N'Tốn',N'Đông',N'Diên niên',0.75,N'Hướng mang đến sự hòa thuận, thúc đẩy sự nghiệp và gia tăng tuổi thọ.'),
(N'Tốn',N'Đông Nam',N'Phục vị',0.5,N'Hướng giúp cải thiện quan hệ gia đình và mang lại bình yên.'),
(N'Tốn',N'Đông Bắc',N'Tuyệt mệnh',0.25,N'Hướng không tốt cho sự phát triển, gây ra bất hòa và đau buồn.'),
(N'Tốn',N'Tây Nam',N'Ngũ quỷ',0.25,N'Hướng gây trở ngại trong quan hệ tình cảm và có nhiều thử thách, bệnh tật.'),
(N'Tốn',N'Tây',N'Lục sát',0.25,N'Hướng dễ hao tài, tốn của và thành viên trong gia đình gặp rủi ro, tai nạn.'),
(N'Tốn',N'Tây Bắc',N'Họa hại',0,N'Hướng ảnh hưởng không tốt đến sức khỏe và gây rủi ro cho gia chủ.'),

(N'Khôn',N'Tây Nam',N'Sinh khí',1,N'Đây là hướng mang lại may mắn nhất cho chủ nhà và tạo ra khí tốt.'),
(N'Khôn',N'Tây Bắc',N'Thiên y',1,N'Đây là hướng tập trung vào sức khỏe, có thể giảm bớt bệnh tật và mang lại sự thịnh vượng.'),
(N'Khôn',N'Tây',N'Diên niên',0.75,N'Hướng mang đến sự hòa thuận, thúc đẩy sự nghiệp và gia tăng tuổi thọ.'),
(N'Khôn',N'Đông Bắc',N'Phục vị',0.5,N'Hướng giúp cải thiện quan hệ gia đình và mang lại bình yên.'),
(N'Khôn',N'Bắc',N'Tuyệt mệnh',0.25,N'Hướng không tốt cho sự phát triển, gây ra bất hòa và đau buồn.'),
(N'Khôn',N'Đông Nam',N'Ngũ quỷ',0.25,N'Hướng gây trở ngại trong quan hệ tình cảm và có nhiều thử thách, bệnh tật.'),
(N'Khôn',N'Nam',N'Lục sát',0.25,N'Hướng dễ hao tài, tốn của và thành viên trong gia đình gặp rủi ro, tai nạn.'),
(N'Khôn',N'Đông',N'Họa hại',0,N'Hướng ảnh hưởng không tốt đến sức khỏe và gây rủi ro cho gia chủ.'),

(N'Cấn',N'Đông Bắc',N'Sinh khí',1,N'Đây là hướng mang lại may mắn nhất cho chủ nhà và tạo ra khí tốt.'),
(N'Cấn',N'Tây',N'Thiên y',1,N'Đây là hướng tập trung vào sức khỏe, có thể giảm bớt bệnh tật và mang lại sự thịnh vượng.'),
(N'Cấn',N'Tây Bắc',N'Diên niên',0.75,N'Hướng mang đến sự hòa thuận, thúc đẩy sự nghiệp và gia tăng tuổi thọ.'),
(N'Cấn',N'Tây Nam',N'Phục vị',0.5,N'Hướng giúp cải thiện quan hệ gia đình và mang lại bình yên.'),
(N'Cấn',N'Nam',N'Tuyệt mệnh',0.25,N'Hướng không tốt cho sự phát triển, gây ra bất hòa và đau buồn.'),
(N'Cấn',N'Đông',N'Ngũ quỷ',0.25,N'Hướng gây trở ngại trong quan hệ tình cảm và có nhiều thử thách, bệnh tật.'),
(N'Cấn',N'Bắc',N'Lục sát',0.25,N'Hướng dễ hao tài, tốn của và thành viên trong gia đình gặp rủi ro, tai nạn.'),
(N'Cấn',N'Đông Nam',N'Họa hại',0,N'Hướng ảnh hưởng không tốt đến sức khỏe và gây rủi ro cho gia chủ.');


-- Insert data into Koi_Variety table
INSERT INTO Koi_Variety (KoiType, Image, Element, Description) VALUES
(N'Hariwake', N'Hariwake.jpg', N'Thổ', N'Hariwake là một trong những dòng cá koi vàng được yêu thích nhất với màu sắc vàng rực rỡ bao phủ trên toàn thân. Điểm nổi bật của dòng cá koi này là chúng có các đốm vàng trên lưng và cánh tay của nó. Koi hariwake được coi là biểu tượng của sự giàu có và thịnh vượng theo văn hóa Nhật Bản.'),
(N'Kikusui', N'Kikusui.png', N'Kim', N'Cá koi Kikusui về cơ bản là một phiên bản Doitsu của koi Hariwake, là một con koi kim loại, hai màu với màu cơ bản là trắng và hoa văn màu đỏ, cam hoặc vàng trên nền màu trắng . Kikusui cũng thường được mô tả là koi kim loại, Doitsu Kohaku koi vì nó là một con koi trắng, không vảy với hoa văn màu đỏ trên nền trắng và một lớp ánh sáng phản chiếu, hoặc bóng, trên da của cá koi.'),
(N'Goshiki', N'Goshiki.png', N'Hỏa', N'Cá koi Goshiki là kết quả lai tạo thành công hai giống cá koi phổ biến asagi và cá koi kohaku. Có thể nói cá koi Goshiki là một con kohaku với lớp vẩy caro màu đen ấn tượng trên lưng làm nổi bật những mảng màu đỏ (hi) vốn có của giống kohaku. Từ Goshiki có nghĩa là ngũ sắc các nhà tạo giống rất yêu thích và ấn tượng với giống cá này bởi màu sắc nó khá phong phú và đẹp mắt.'),
(N'Goromo', N'Goromo.png', N'Kim', N'Cá koi Goromo là kết quả lai tạo tình cờ giữa một con cá koi kohaku, một con Sanke hoặc một con Showa với một con cá koi Asagi. Bình thường việc lai tạo các giống koi trên với koi asagi chỉ tạo ra koi Goshiki. Chính vì đặc điểm này mà cá koi mới được đặt tên là “Goromo” – nghĩa tiếng Nhật là “được khoác áo”. Thực chất Goromo chỉ là tên rút gọn, tên đầy đủ của dòng koi Goromo này phải là Ai Goromo có nghĩa là “ được khoác áo màu xanh Indigo”.'),
(N'Soragoi', N'Soragoi.png', N'Kim', N'Cá koi Soragoi (SOH-rog-GOY) là những con koi xám đơn màu thường có dạng lưới trên vảy của chúng được gọi là fukurin (FOO-koo-REEN).Do đó, hầu hết cá koi Soragoi đều có tiềm năng là cá koi rất lớn và thường hướng về thức ăn hơn các loại koi khác. Điều này rất tốt cho người nuôi cá koi vì nó có nghĩa là Soragoi và Chagoi, koi sẽ thường đến chào đón bạn ở đầu ao với hy vọng được cho ăn và bất kỳ con cá nào khác trong ao sẽ đi theo chúng!'),
(N'Hi Utsuri', N'Hi_Utsuri.png', N'Hỏa', N'Koi utsuri có điểm đặc trưng là những bệt màu tạo thành vệt hoặc khoang màu lớn trên màu nền đen của chúng.Tại phần đầu của cá koi utsuri luôn có những mảng hoặc vệt màu đen. Các mảng đen trên mình koi utsuri có thể là mảng lớn, chấm nhỏ hoặc vệt uốn lượn theo chiều ngang'),
(N'Ki Utsuri', N'Ki_Utsuri.png', N'Thổ', N'Koi utsuri có điểm đặc trưng là những bệt màu tạo thành vệt hoặc khoang màu lớn trên màu nền đen của chúng.Tại phần đầu của cá koi utsuri luôn có những mảng hoặc vệt màu đen. Các mảng đen trên mình koi utsuri có thể là mảng lớn, chấm nhỏ hoặc vệt uốn lượn theo chiều ngang'),
(N'Tancho Kohaku', N'Tancho_Kohaku.png', N'Kim', N'Koi tancho kohaku chính là “quốc kì sống” của đất nước Nhật Bản, chúng có thân mình và phần bụng màu trắng muốt như tuyết, tất cả các vây cũng màu trắng và chỉ có duy nhất một chấm màu đỏ lớn ở trên đầu. Đây cũng là loại cá koi Tancho được nhiều người biết đến và ao ước được sở hữu nhất.'),
(N'Kujaku', N'Kujaku.jpg', N'Thủy', N'Cá Koi KujaKu là một trong những dòng cá Koi nổi bật bởi sở hữu bộ vảy ánh bạc nền đen pha lẫn các dãy màu đỏ vô cùng kiêu hãnh và bắt mắt. Trong vài năm gần đây, Kujaku đang ngày càng gây được sự chú ý lớn tại Việt Nam, trở thành giống cá được nhiều người yêu Koi tìm kiếm.'),
(N'Shiro Utsuri', N'shiro-utsuri.jpg', N'Kim', N'Cá koi utsuri được lai tạo sao cho thân mình của chúng thường chỉ có hai màu, trong đó màu đen (sumi) chiếm tỷ lệ nhỏ hơn, tạo thành các bệt đen (vết đen) trên thân cá.'),
(N'Ochiba Shigure', N'ochibaSigure.jpg', N'Kim', N'Ochiba là giống cá Koi được lai tạo như một sự kết hợp của Chagoi và Kohaku. Trong tiếng Anh, thuật ngữ Nhật Bản dịch gần như là là mùa thu trên mặt nước. Điều này thể hiện màu sắc ánh kim loại trên mình cá Ochiba.'),
(N'Ogon', N'ogon.jpg', N'Thổ', N'Cá Koi Ogon được coi là một trong những giống cá Koi đẹp nhất và độc đáo nhất trên trái đất với ngoại hình đặc trưng là màu vàng óng ánh rực rỡ.'),
(N'Shusui', N'shusui.png', N'Thủy',N'Cá koi Shusui là một trong những giống cá chép đẹp và độc đáo nhất trong thế giới cá cảnh. Với thiết kế hai mảng vẩy lớn sậm màu trải dài từ vai xuống lưng, cá koi Shusui thực sự là một tác phẩm nghệ thuật sống đầy ấn tượng'),
(N'Taisho Sanke', N'TaishoSanke.jpg', N'Thổ',N' Koi Taisho Sanke là một trong số 2 dòng chính được lai tạo từ cá chép hoang dã Magoi cổ xưa tại Nhật Bản.'),
(N'Kikokuryu', N'kikokuryu.jpg', N'Kim', N'Cá Kikokuryu thực chất là một Kumonryu kim loại, một con cá koi với làn da bạch kim sáng bóng và vây với màu sắc Sumi sâu trong suốt. Dòng Koi  sẽ không có 2 con nào giống nhau vì chúng rất hiếm được thấy trên thị trường.'),
(N'Kin Kikokuryu', N'KinKikokuryu.jpg', N'Kim',N' Kin Kikokuryu kết hợp màu da cam hoặc màu vàng với các mẫu màu đen và trắng của Kikokuryu để tạo thành loại koi mới nhất trong họ cá Koi.'),
(N'Showa Sanshoku', N'showa_sanshoku.jpg', N'Kim', N'Mặc dù tất cả các Showa phải sở hữu làn da đen (gọi là Sumi) được bao phủ bởi các dấu hiệu từ đỏ đến đỏ cam (Hi) và trắng (Shiroji) trên đó, có rất nhiều giống Showa khác nhau bao gồm các loại hoa văn và cách sắp xếp khác nhau.'),
(N'Kohaku', N'kohaku.jpg', N'Hỏa', N'Kohaku – dòng cá kết hợp tương phản giữa 2 màu trắng(Shiroji) và đỏ (Hi) đã tạo nên vẻ đẹp đơn giản không chỉ phổ biến nhất, đẹp nhất mà còn luôn tiềm ẩn khả năng trở thành chủng cá có giá trị cao nhất trong các dòng cá Koi.'),
(N'Asagi', N'asagi.jpg',N'Kim', N'Asagi chính là giống sản sinh ra Nishikigoi, chúng bắt nguồn từ loài cá chép đen thường sinh sống ở những vùng sông hoặc suối, những chú cá chép đen có sự tiến hóa vượt bậc và được người dân Nhật chọn lựa những chú cá có màu sắc như Trắng, Xanh dương và màu đỏ và giữ lại trong hồ.'),
(N'Kumonryu', N'kumonryu.png', N'Kim', N'Kumonryu là koi Doitsu có hoa văn màu đen như mực nổi lên như những đám mây sấm đen cuồn cuộn trên nền tuyết trắng. Một con Koi Ben Kumonryu được đánh giá là đẹp khi có sự tương xứng và cân bằng giữa các màu đỏ, đen và trắng trên thân của nó.'),
(N'Beni Kumonryu', N'Beni_Kumonryu.jpg', N'Hỏa', N'Koi Beni Kumonryu là một biến thể hiếm hoi của Kumonryu, chúng thường có ba màu là đỏ, đen và trắng.'),
(N'Chagoi', N'chagoi.jpg', N'Thổ', N'Chagoi luôn chiếm được sự yêu thích từ người chơi cá koi. Chagoi biểu tượng cho sự mạnh mẽ, dũng cảm, sẵn sàng đương đầu với thử thách để đạt được thành công.' ),
(N'Matsuba', N'matsubaKOI.png', N'Kim', N'Koi Matsuba là những con cá đơn sắc. Giống cá này thường có 3 màu chủ yếu là màu trắng bạc, màu vàng hoặc màu đỏ cam. Matsuba là cá koi màu kim loại với hoạ tiết lưới màu đen. Cơ thể của cá koi Matsuba có một màu với vảy hình nón rỗng'),
(N'Gin Rin Yamato Nishiki', N'GinRinYamatoNishiki.jpg', N'Thổ', N'Gin Rin Yamato nishiki koi là loài cá được lai tạo khoảng thời gian sau này của giống koi sanke. Có thể nói cá koi yamato nishiki giúp vẻ đẹp màu sắc Gin Rin tiến đến một tầm mới hơn khi phủ lên mình cá một lớp ánh kim loại lấp lánh.');
-- Insert data into Color table
INSERT INTO Color (Color) VALUES
(N'Vàng'),
(N'Trắng'),
(N'Đỏ'),
(N'Đen'),
(N'Cam'),
(N'Bạc'),
(N'Nâu');
-- Insert data into Element_Color table
INSERT INTO Element_Color (Element,Color,ColorPoint) VALUES
(N'Kim',N'Vàng',1),
(N'Kim',N'Trắng',0.75),
(N'Kim',N'Đỏ',0.25),
(N'Kim',N'Đen',0.5),
(N'Kim',N'Cam',0.25),
(N'Kim',N'Bạc',0.75),
(N'Kim',N'Nâu',1),
(N'Hỏa',N'Vàng',0.5),
(N'Hỏa',N'Trắng',0.25),
(N'Hỏa',N'Đỏ',0.75),
(N'Hỏa',N'Đen',0.25),
(N'Hỏa',N'Cam',0.75),
(N'Hỏa',N'Bạc',0.25),
(N'Hỏa',N'Nâu',0.5),
(N'Mộc',N'Vàng',0.25),
(N'Mộc',N'Trắng',0.25),
(N'Mộc',N'Đỏ',0.5),
(N'Mộc',N'Đen',1),
(N'Mộc',N'Cam',0.5),
(N'Mộc',N'Bạc',0.25),
(N'Mộc',N'Nâu',0.25),
(N'Thủy',N'Vàng',0.25),
(N'Thủy',N'Trắng',1),
(N'Thủy',N'Đỏ',0.25),
(N'Thủy',N'Đen',0.75),
(N'Thủy',N'Cam',0.25),
(N'Thủy',N'Bạc',1),
(N'Thủy',N'Nâu',0.25),
(N'Thổ',N'Vàng',0.75),
(N'Thổ',N'Trắng',0.5),
(N'Thổ',N'Đỏ',1),
(N'Thổ',N'Đen',0.25),
(N'Thổ',N'Cam',0.75),
(N'Thổ',N'Bạc',0.5),
(N'Thổ',N'Nâu',0.75);


-- Insert data into Type_Color table
INSERT INTO Type_Color (KoiType, Color, Percentage) VALUES
(N'Hariwake', N'Vàng', 0.6),
(N'Hariwake', N'Trắng', 0.4),
(N'Kikusui', N'Trắng', 0.7),
(N'Kikusui', N'Đỏ', 0.3),
(N'Goshiki', N'Đỏ', 0.7),
(N'Goshiki', N'Đen', 0.2),
(N'Goshiki', N'Trắng', 0.1),
(N'Goromo', N'Đỏ', 0.6),
(N'Goromo', N'Trắng', 0.4),
(N'Soragoi', N'Trắng', 1),
(N'Hi Utsuri', N'Cam', 0.7),
(N'Hi Utsuri', N'Đen', 0.3),
(N'Ki Utsuri', N'Vàng', 0.7),
(N'Ki Utsuri', N'Đen', 0.3),
(N'Tancho Kohaku', N'Trắng', 0.9),
(N'Tancho Kohaku', N'Đỏ', 0.1),
(N'Kujaku', N'Bạc', 0.6),
(N'Kujaku', N'Đen', 0.2),
(N'Kujaku', N'Đỏ', 0.2),
(N'Shiro Utsuri', N'Trắng', 0.7),
(N'Shiro Utsuri', N'Đen', 0.3),
(N'Ochiba Shigure', N'Trắng', 0.7),
(N'Ochiba Shigure', N'Cam', 0.3),
(N'Ogon', N'Vàng', 1),
(N'Shusui', N'Trắng', 0.5),
(N'Shusui', N'Đen', 0.5),
(N'Taisho Sanke', N'Trắng', 0.7),
(N'Taisho Sanke', N'Đen', 0.15),
(N'Taisho Sanke', N'Đỏ', 0.15),
(N'Kikokuryu', N'Trắng', 0.8),
(N'Kikokuryu', N'Đen', 0.2),
(N'Kin Kikokuryu', N'Đen', 0.6),
(N'Kin Kikokuryu', N'Vàng', 0.3),
(N'Kin Kikokuryu', N'Trắng', 0.1),
(N'Showa Sanshoku', N'Trắng', 0.7),
(N'Showa Sanshoku', N'Đỏ', 0.2),
(N'Showa Sanshoku', N'Đen', 0.1),
(N'Kohaku', N'Đỏ', 0.6),
(N'Kohaku', N'Trắng', 0.4),
(N'Asagi', N'Đen', 0.5),
(N'Asagi', N'Đỏ', 0.1),
(N'Asagi', N'Trắng', 0.4),
(N'Kumonryu', N'Trắng', 0.6),
(N'Kumonryu', N'Đen', 0.4),
(N'Beni Kumonryu', N'Đỏ', 0.6),
(N'Beni Kumonryu', N'Trắng', 0.3),
(N'Beni Kumonryu', N'Đen', 0.1),
(N'Chagoi', N'Vàng', 0.8),
(N'Chagoi', N'Nâu', 0.2),
(N'Matsuba', N'Trắng', 0.6),
(N'Matsuba', N'Đen', 0.4),
(N'Gin Rin Yamato Nishiki', N'Trắng', 0.25),
(N'Gin Rin Yamato Nishiki', N'Cam', 0.7),
(N'Gin Rin Yamato Nishiki', N'Đen', 0.05);

-- Insert data into Quantity table
INSERT INTO Quantity (Element, Description) VALUES
(N'Thủy', N'Phù hợp nuôi số lượng cá có hàng đơn vị là 1 hoặc 6. VD: 1 con, 11 con, 6 con, 26 con,...'),
(N'Kim', N'Phù hợp nuôi số lượng cá có hàng đơn vị là 4 hoặc 9. VD: 4 con, 14 con, 9 con, 29 con,...'),
(N'Mộc', N'Phù hợp nuôi số lượng cá có hàng đơn vị là 3 hoặc 8. VD: 3 con, 13 con, 8 con, 28 con,...'),
(N'Hỏa', N'Phù hợp nuôi số lượng cá có hàng đơn vị là 2 hoặc 7. VD: 2 con, 12 con, 7 con, 27 con,...'),
(N'Thổ', N'Phù hợp nuôi số lượng cá có hàng đơn vị là 5 hoặc 0. VD: 10 con, 5 con, 15 con,...');


