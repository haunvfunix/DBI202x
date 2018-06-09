USE[SQL_ASM2]
GO
	CREATE INDEX DC
	ON NGUOIDUNG(DiaChi)

	SELECT*FROM NguoiDung
	WHERE DiaChi='HCM'

	SELECT*FROM NguoiDung
	WITH(INDEX(DC))
	WHERE DiaChi='HCM'
GO
/* giup viec tim kiem nhung nguoi cung que nhanh hon */