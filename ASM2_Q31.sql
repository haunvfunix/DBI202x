USE [SQL_ASM2]
GO

SELECT *FROM [dbo].[BaiViet]
  WHERE ID LIKE 'SV%' AND DungLuong >300 OR ID LIKE 'GV%' AND DungLuong <400;
GO


