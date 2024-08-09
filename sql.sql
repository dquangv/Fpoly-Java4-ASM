use master
go
drop database java4_asm
go
CREATE DATABASE java4_asm
go
USE java4_asm
go

-- Create tables
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[account]') AND type = 'U')
BEGIN
    CREATE TABLE dbo.account
    (
        id INT IDENTITY(1,1) PRIMARY KEY,
        password NVARCHAR(MAX),
        email NVARCHAR(MAX),
        fullname NVARCHAR(MAX),
        admin BIT,
        image NVARCHAR(MAX)
    );
END;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[share]') AND type = 'U')
BEGIN
    CREATE TABLE dbo.share
    (
        id INT IDENTITY(1,1) PRIMARY KEY,
        userid INT,
        videoid INT,
        email NVARCHAR(MAX), -- SQL Server does not have an array type, so using NVARCHAR(MAX) instead
        sharedate DATE
    );
END;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[video]') AND type = 'U')
BEGIN
    CREATE TABLE dbo.video
    (
        id INT IDENTITY(1,1) PRIMARY KEY,
        title NVARCHAR(MAX),
        poster NVARCHAR(MAX),
        views BIGINT,
        description NVARCHAR(MAX),
        active BIT,
        link NVARCHAR(MAX)
    );
END;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[watched]') AND type = 'U')
BEGIN
    CREATE TABLE dbo.watched
    (
        id INT IDENTITY(1,1) PRIMARY KEY,
        userid INT,
        videoid INT,
        likedate DATE,
        watchdate DATETIME,
        isliked BIT
    );
END;

-- Add foreign key constraints
ALTER TABLE dbo.share
ADD CONSTRAINT FK_Share_User FOREIGN KEY (userid)
REFERENCES dbo.account (id);

ALTER TABLE dbo.share
ADD CONSTRAINT FK_Share_Video FOREIGN KEY (videoid)
REFERENCES dbo.video (id);

ALTER TABLE dbo.watched
ADD CONSTRAINT FK_Fav_User FOREIGN KEY (userid)
REFERENCES dbo.account (id);

ALTER TABLE dbo.watched
ADD CONSTRAINT FK_Fav_Vid FOREIGN KEY (videoid)
REFERENCES dbo.video (id);

INSERT INTO dbo.video (title, poster, views, description, active, link)
VALUES
(N'English Learning Podcast || learn English through podcast || Episode-15', 'https://i.ytimg.com/vi/ku7Qv6kaVSo/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCOpCWAVIc1paHNw5S3lrdHrkPHeg', 1000000, N'xin chào', 1, 'https://www.youtube.com/embed/ku7Qv6kaVSo'),
(N'Rust Back-end #11: Senior Rust thực sự Code BE như thế nào?', 'https://i.ytimg.com/vi/RZpJg4-wMo4/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC2QVou2S-wOFEeymrynj_EDz90Hw', 11000000, N'Github Repo: https://github.com/jayden-dang/rust-microservices-monorepo', 1, 'https://www.youtube.com/embed/RZpJg4-wMo4'),
(N'I Quit My Job as a Data Scientist', 'https://i.ytimg.com/vi/OMI4Wu9wnY0/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLB5ffWJMUbCAjz_W39CbHWVP2_HLQ', 7000, N'It took a lot of courage for me to film and post this video. Hope you all are doing well and see you in the next one ❤️', 1, 'https://www.youtube.com/embed/OMI4Wu9wnY0'),
(N'ĐỊNH HƯỚNG TỐT NGHIỆP, THỰC TẬP TỐT NGHIỆP NGÀNH LẬP TRÌNH', 'https://i.ytimg.com/vi/vxgZ46HSfy8/hqdefault.jpg?sqp=-oaymwEcCNACELwBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLA7pXgREx8gX3jhteJXDZqzlBc6ZA', 7700000, N'ĐỊNH HƯỚNG TỐT NGHIỆP, THỰC TẬP TỐT NGHIỆP NGÀNH LẬP TRÌNH', 1, 'https://www.youtube.com/embed/vxgZ46HSfy8'),
(N'LAB12_ CHẠY DỰ ÁN ĐƠN GIẢN JAVA5 SUMMER2024', 'https://i.ytimg.com/vi/ZUYt4SlaHOs/hqdefault.jpg?sqp=-oaymwEcCNACELwBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBqt4rJgoOAmrHI77o5uZhN1uaKmQ', 562025, N'LAB12_ CHẠY DỰ ÁN ĐƠN GIẢN JAVA5 SUMMER2024', 1, 'https://www.youtube.com/embed/ZUYt4SlaHOs'),
(N'Claude AI code khét quá, chuẩn bị thất nghiêp rồi | QuanIT', 'https://i.ytimg.com/vi/69I4_YJo54c/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC4IrXWWXHfBS5JuRV4vmMP9uuwwg', 1402333, N'Claude AI code khét quá, chuẩn bị thất nghiêp rồi | QuanIT', 0, 'https://www.youtube.com/embed/69I4_YJo54c'),
(N'Xây dựng chức năng đăng ký với Java spring và ReactJS', 'https://i.ytimg.com/vi/EfqEqsJRUV8/hq720.jpg?sqp=-oaymwE2CNAFEJQDSFXyq4qpAygIARUAAIhCGAFwAcABBvABAfgB_gmAAtAFigIMCAAQARhlIGUoZTAP&rs=AOn4CLC-XU09_Zvs0yAyyjD9utNKB1KVOw', 7410, 'Xây dựng chức năng đăng ký với Java spring và ReactJS', 1, 'https://www.youtube.com/embed/EfqEqsJRUV8'),
(N'Mock Google Coding Interview with a Meta Intern', 'https://i.ytimg.com/vi/46dZH7LDbf8/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCaV8Ji_qVKYmDOLotZTskHuA_gug', 2468834, N'Today I gave a mock google coding interview to ‪@FryingPan‬ who is a former intern at Meta currently studying for coding interviews as he finishes up school. He also recently interned at Meta in NYC.', 1, 'https://www.youtube.com/embed/46dZH7LDbf8'),
(N'SƠN TÙNG M-TP | ĐỪNG LÀM TRÁI TIM ANH ĐAU | OFFICIAL MUSIC VIDEO', 'https://i.ytimg.com/vi/abPmZCZZrFA/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAKKkxyzooXkasYWnLdJchzMqBICg', 950000, N'Hãy cùng thưởng thức ca khúc ĐỪNG LÀM TRÁI TIM ANH ĐAU ngay tại đây nhé: 👉🏻 👉🏻 👉🏻 https://vivienm.lnk.to/DLTTAD 💍❤️‍🩹🧩', 1, 'https://www.youtube.com/embed/abPmZCZZrFA'),
(N'MẸO NHỎ KHI SỬ DỤNG TAILWIND CSS', 'https://i.ytimg.com/vi/2L-TotG-u-w/hq720.jpg?sqp=-oaymwE2CNAFEJQDSFXyq4qpAygIARUAAIhCGAFwAcABBvABAfgB_gmAAtAFigIMCAAQARhHIFAocjAP&rs=AOn4CLBZSFzucNpIuUAXlRR5GB8Dpbz6AA', 123199, N'mẹo nhỏ khi sử dụng Tailwind css', 1, 'https://www.youtube.com/embed/2L-TotG-u-w'),
(N'Vũ., Gigi Hương Giang, Anh Tú gây thương nhớ Những Lời Hứa Bỏ Quên, Hoàng Hôn Nhớ, Vừa Đi Vừa Khóc', 'https://i.ytimg.com/vi/j_iaMkWq5WU/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDeF3RE2hDQ8KxbokVae-myrZ5wIg', 1702865, 'Vũ., Gigi Hương Giang, Anh Tú gây thương nhớ Những Lời Hứa Bỏ Quên, Hoàng Hôn Nhớ, Vừa Đi Vừa Khóc #vu #gigihuonggiang #anhtu #song24 #sóngxuân #anhtraisayhi #anhtrai 👍Tham gia hội viên để đón xem nhiều nội dung ĐỘC QUYỀN trên kênh: / @vietalents', 1, 'https://www.youtube.com/embed/j_iaMkWq5WU'),
(N'Gracie Abrams - Close To You (Jimmy Kimmel Live! 2024)', 'https://i.ytimg.com/vi/7CZenGLM2ds/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLARFa2aw5tfegTOl3hD8LdQcGPp3A', 4000333, N'Shop official Gracie merch and music: https://GracieAbrams.lnk.to/Shop', 1, 'https://www.youtube.com/embed/7CZenGLM2ds'),
(N'Software Engineer Reacts: Winning Google Kickstart at 18!!', 'https://i.ytimg.com/vi/OAO--D67XUo/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBaC-1ZNp6byfHPZd7wlK0Sszml6Q', 12332, N'Professional software engineer reacts to an 18-year-old winning a competitive programming contest, which pits some of the best programmers against each other in 3 hours of non-stop coding.', 1, 'https://www.youtube.com/embed/OAO--D67XUo'),
(N'Tự học ReactJs 38: Hoàn thiện xử lý CheckBox', 'https://i.ytimg.com/vi/v3MmGGa7RME/hq720.jpg?sqp=-oaymwE2CNAFEJQDSFXyq4qpAygIARUAAIhCGAFwAcABBvABAfgB_gmAAtAFigIMCAAQARhLIFAoZTAP&rs=AOn4CLCj63TI04PN3Vacc63t8oz7Wj3Nog', 1234567, N'Tự học ReactJs 38: Hoàn thiện xử lý CheckBox', 1, 'https://www.youtube.com/embed/v3MmGGa7RME'),
(N'Chiếc CV này đã giúp mình nhận Vài Chục Offer và có Job Ngon', 'https://img.youtube.com/vi/nC9lcq8O-i8/0.jpg', NULL, N'Chiếc CV này đã giúp mình nhận Vài Chục Offer và có Job Ngon', 1, 'https://www.youtube.com/embed/nC9lcq8O-i8');
go

INSERT INTO dbo.account (password, email, fullname, admin, image)
VALUES
('123', 'tungvt@gmail.com', N'Võ Thanh Tùng', 1, 'tung.jpg'),
('123', 'quangvd@gmail.com', N'Vũ Đăng Quang', 0, 'QuangVD.jpg'),
('123', 'quangbm@gmail.com', N'Bùi Minh Quang', 0, 'QuangBui.jpg'),
('123', 'tiendq@gmail.com', N'Đinh Quốc Tiến', 0, 'https://lh3.googleusercontent.com/a/ACg8ocLB1X808rpAzyHic4XBtKJ6Y0t-XiSb0MQd63h4Qxu4q948KQ=s96-c'),
('123', 'huydq@gmail.com', N'Đinh Quốc Huy', 0, 'https://lh3.googleusercontent.com/a/ACg8ocLB1X808rpAzyHic4XBtKJ6Y0t-XiSb0MQd63h4Qxu4q948KQ=s96-c'),
('1', 'quangbmps28437@fpt.edu.vn', N'Bui Minh Quang (FPL HCM)', 0, 'https://lh3.googleusercontent.com/a/ACg8ocLB1X808rpAzyHic4XBtKJ6Y0t-XiSb0MQd63h4Qxu4q948KQ=s96-c'),
('123', 'buiminhquang2002@gmail.com', N'Quang Bùi', 0, 'https://lh3.googleusercontent.com/a/ACg8ocLziw9-2vPpiPBwpjJ4QGimfvGIH5JEevVJ9AkOe8MBoGTViBUd=s96-c'),
('123', 'vothanhtung@gmail.com', N'Võ Thanh Tùng', 0, 'https://lh3.googleusercontent.com/a/ACg8ocL5eT663ZfIBzO8va28FsGqFdmgfFEselzBLj6rgIPUCzTcSN6l=s96-c'),
(NULL, 'vothanhtung795@gmail.com', N'tung vo', 0, 'https://lh3.googleusercontent.com/a/ACg8ocL5eT663ZfIBzO8va28FsGqFdmgfFEselzBLj6rgIPUCzTcSN6l=s96-c');
go

INSERT INTO dbo.share (userid, videoid, email, sharedate)
VALUES
(1, 1, '{nhan@gmail.com,thanh@gmail.com}', '2024-07-13'),
(2, 3, '{trieu@gmail.com}', '2024-09-19'),
(3, 4, '{quangbm@gmail.com,do@gmail.com}', '2024-10-10'),
(4, 5, '{thong@gmail.com,phuoc@gmail.com,than@gmail.com}', '2024-12-15'),
(5, 3, '{tung852654@gmail.com}', '2024-07-29'),
(6, 3, '{buiminhquang2002@gmail.com}', '2024-07-29'),
(7, 4, '{vothanhtung795@gmail.com}', '2024-07-29'),
(8, 5, '{vothanhtung795@gmail.com}', '2024-07-29'),
(9, 6, '{tung852654@gmail.com}', '2024-07-30'),
(1, 7, '{tung852654@gmail.com}', '2024-07-30'),
(2, 8, '{tung852654@gmail.com}', '2024-07-30'),
(3, 9, '{tung852654@gmail.com}', '2024-07-30'),
(4, 10, '{vothanhtung795@gmail.com}', '2024-07-30'),
(5, 11, '{tung852654@gmail.com,vothanhtung795@gmail.com}', '2024-07-30'),
(6, 7, '{quangbmps28437@fpt.edu.vn}', '2024-07-31'),
(7, 1, '{quangbmps28437@fpt.edu.vn}', '2024-07-31');
go

INSERT INTO dbo.watched (userid, videoid, likedate, watchdate, isliked)
VALUES
(1, 8, '2024-07-13', '2024-07-25 12:08:50.028', 1),
(1, 10, '2024-08-19', '2024-07-21 00:00:00', 1),
(1, 7, '2024-12-12', '2024-07-21 00:00:00', 1),
(3, 5, '2024-07-23', '2024-07-28 10:25:51.465', 0),
(3, 1, '2024-07-24', '2024-07-29 16:04:27.072', 0),
(3, 2, '2024-07-28', '2024-07-29 00:02:22.894', 1),
(4, 7, '2024-09-04', NULL, 1),
(4, 1, '2024-10-15', NULL, 1),
(5, 4, '2024-11-26', NULL, 1),
(5, 2, '2024-12-17', NULL, 1),
(3, 4, '2024-07-24', '2024-07-28 23:39:53.603', 0),
(3, 7, '2024-07-24', '2024-07-28 23:39:59.984', 1),
(3, 8, '2024-07-24', '2024-07-22 00:00:00', 0),
(6, 1, '2024-07-22', '2024-07-22 00:00:00', 1),
(6, 2, '2024-07-22', '2024-07-22 00:00:00', 1),
(6, 3, '2024-07-22', '2024-07-22 00:00:00', 1),
(7, 4, '2024-07-24', '2024-07-31 17:09:05.771', 1),
(7, 5, '2024-07-22', '2024-07-29 23:17:59.76', 1),
(7, 6, '2024-07-22', '2024-07-28 09:22:00.208', 1),
(6, 4, '2024-07-18', '2024-07-18 00:00:00', 1),
(6, 5, '2024-07-18', '2024-07-18 00:00:00', 1),
(6, 6, '2024-07-18', '2024-07-18 00:00:00', 1),
(3, 6, '2024-07-24', '2024-07-23 00:00:00', 0),
(4, 2, '2024-07-24', '2024-07-23 00:00:00', 0),
(4, 3, '2024-07-23', '2024-07-23 00:00:00', 1),
(4, 4, '2024-07-23', '2024-07-23 00:00:00', 1),
(1, 1, '2024-07-23', '2024-07-31 10:48:50.302', 0),
(3, 14, '2024-07-23', '2024-07-29 00:02:54.882', 0),
(3, 13, '2024-07-24', '2024-07-23 00:00:00', 0),
(3, 11, '2024-07-24', '2024-07-23 00:00:00', 0),
(3, 9, '2024-07-24', '2024-07-23 00:00:00', 0),
(3, 12, '2024-07-24', '2024-07-26 09:35:10.879', 0),
(3, 3, '2024-07-24', '2024-07-29 00:11:14.63', 0),
(2, 1, '2024-07-24', '2024-07-24 00:00:00', 1),
(2, 2, '2024-07-24', '2024-07-24 00:00:00', 1),
(2, 14, '2024-07-24', '2024-07-24 00:00:00', 1),
(2, 8, '2024-07-24', '2024-07-24 00:00:00', 1),
(7, 12, '2024-07-24', '2024-07-24 00:00:00', 1),
(7, 13, '2024-07-24', '2024-07-24 00:00:00', 1),
(7, 1, '2024-07-31', '2024-07-31 09:18:34.882', 1),
(7, 14, '2024-07-24', '2024-07-28 10:52:38.049', 1),
(7, 9, '2024-07-24', '2024-07-24 00:00:00', 0),
(7, 7, '2024-07-24', '2024-07-24 00:00:00', 0),
(7, 8, '2024-07-24', '2024-07-24 00:00:00', 0),
(7, 3, '2024-07-24', '2024-07-28 10:52:26.074', 0),
(7, 11, '2024-07-24', '2024-07-24 00:00:00', 0),
(4, 11, '2024-07-24', '2024-07-24 00:00:00', 0),
(2, 2, '2024-07-24', '2024-07-24 00:00:00', 0),
(1, 9, '2024-07-24', '2024-07-24 00:00:00', 0),
(1, 2, '2024-07-24', '2024-07-25 12:08:44.699', 0),
(1, 3, '2024-07-24', '2024-07-31 07:17:51.52', 0),
(1, 4, '2024-07-24', '2024-07-25 12:08:22.503', 0),
(1, 5, '2024-07-25', '2024-07-25 12:07:55.743', 0),
(2, 2, '2024-07-29', '2024-07-29 18:05:07.087', 0),
(2, 3, '2024-07-30', '2024-07-30 08:49:19.31', 0),
(2, 4, '2024-07-30', '2024-07-30 08:50:35.802', 0),
(3, 2, '2024-07-30', '2024-07-30 11:22:04.004', 0),
(3, 9, '2024-07-30', '2024-07-30 11:23:06.438', 0),
(3, 4, '2024-07-30', '2024-07-30 11:35:07.802', 0);
go
CREATE OR ALTER FUNCTION dbo.get_video_statistics()
RETURNS @result TABLE (
    [Tên Video] NVARCHAR(255),
    [Lượt Thích] BIGINT
)
AS
BEGIN
    INSERT INTO @result
    SELECT 
        v.title AS [Tên Video],
        COUNT(CASE WHEN w.isliked = 1 THEN 1 END) AS [Lượt Thích]
    FROM 
        dbo.video v
    JOIN 
        dbo.watched w ON v.id = w.videoid
    GROUP BY 
        v.title
    ORDER BY 
        v.title;

    RETURN;
END;
GO


CREATE OR ALTER FUNCTION dbo.get_likes_per_video()
RETURNS @result TABLE (
    video_title NVARCHAR(255),
    user_fullname NVARCHAR(255),
    user_email NVARCHAR(255),
    like_date DATE
)
AS
BEGIN
    INSERT INTO @result
    SELECT
        v.title AS video_title,
        a.fullname AS user_fullname,
        a.email AS user_email,
        w.likedate AS like_date
    FROM
        dbo.watched w
    JOIN
        dbo.account a ON w.userid = a.id
    JOIN
        dbo.video v ON w.videoid = v.id
    WHERE
        w.isliked = 1
    ORDER BY
        v.title;

    RETURN;
END;
GO



