USE [SQL_ASM2]
GO
	SELECT [dbo].BaiViet.ID,SUM(BaiViet.DungLuong) AS N'Tong dung luong da dang'
	FROM BaiViet
	GROUP BY ID
	HAVING ID LIKE 'SV%'

GO