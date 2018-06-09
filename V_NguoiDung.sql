USE [SQL_ASM2]
CREATE VIEW NguoiDung_V
 AS
	SELECT MaBai,Ten
	FROM BaiViet,NguoiDung
	WHERE BaiViet.ID = NguoiDung.ID

	SELECT*FROM NguoiDung_V