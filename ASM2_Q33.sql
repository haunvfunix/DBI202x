USE [SQL_ASM2]
GO
	SELECT [dbo].BaiViet.MaBai,[dbo].Like_Bv.NguoiLike
	FROM BaiViet
	LEFT JOIN Like_Bv
	ON BaiViet.MaBai = Like_Bv.MaBai;
GO