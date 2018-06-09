USE [SQL_ASM2]
GO
	CREATE TRIGGER TR_BaiViet 
	 ON BaiViet
	 FOR INSERT
	 AS
	 BEGIN
		 DECLARE @DungLuong int
		 SET @DungLuong = (SELECT DungLuong FROM inserted)
		 IF (@DungLuong > 10000)
			BEGIN
				PRINT N'Dung lượng bài phải nhỏ hơn 10000'
				ROLLBACK TRANSACTION
			END
		
	 END

	 INSERT INTO [dbo].[BaiViet]([MaBai],[DungLuong],[ID]) VALUES('BV09','1000','SV02')