USE [SQL_ASM2]
GO
	CREATE PROCEDURE sp_TimNV
		@MaNV varchar(10)
	AS
	BEGIN
		SELECT * FROM NguoiDung
		WHERE @MaNV = ID
	END

	EXEC sp_TimNV 'SV01'