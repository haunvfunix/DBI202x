USE [SQL_ASM2]
GO
	 CREATE FUNCTION KtDungLuong (@MaBai varchar(10))
	  RETURNS varchar(max)
	  AS
	  BEGIN
		DECLARE @DL INT
		DECLARE @RESULT VARCHAR(200)
		SET @DL = (SELECT DungLuong From BaiViet Where MaBai = @MaBai)
		SET @RESULT = 'Dung luong bai viet co ma ' + @MaBai + ' la: ' + cast(@DL as varchar) 
		RETURN @RESULT
	  END


	SELECT dbo.KtDungLuong('BV01')



