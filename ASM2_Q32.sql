USE [SQL_ASM2]
GO
	SELECT [dbo].NguoiDung.ID,[dbo].NguoiDung.Ten,[dbo].BaiViet.MaBai,[dbo].BaiViet.DungLuong
	FROM NguoiDung
	INNER JOIN BaiViet
	ON NguoiDung.ID = BaiViet.ID
	ORDER BY BaiViet.DungLuong;

GO