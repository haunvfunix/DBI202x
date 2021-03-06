CREATE DATABASE SQL_ASM2
----
CREATE TABLE NguoiDung(
	ID VARCHAR(10) NOT NULL,
	Ten VARCHAR(50) NOT NULL,
	DiaChi VARCHAR(50),
	SDT INT
	PRIMARY KEY (ID) 
)
----
CREATE TABLE BaiViet(
	MaBai VARCHAR(10) NOT NULL,
	ID VARCHAR(10) NOT NULL,
	DungLuong INT,
	PRIMARY KEY(MaBai),
	FOREIGN KEY(ID) REFERENCES NguoiDung (ID)
)
---
CREATE TABLE Comment(
	MaCmt VARCHAR(10) NOT NULL,
	ID VARCHAR(10) NOT NULL,
	MaBai VARCHAR(10) NOT NULL,
	ND TEXT,
	PRIMARY KEY(MaCmt),
	FOREIGN KEY (ID) REFERENCES NguoiDung (ID),
	FOREIGN KEY (MaBai) REFERENCES BaiViet (MaBai)
)
---
CREATE TABLE Share(
	ID VARCHAR(10) NOT NULL,
	MaBai VARCHAR(10) NOT NULL,
	Nguoi_Share VARCHAR(50) NOT NULL,
	PRIMARY KEY (ID,MaBai),
	FOREIGN KEY (ID) REFERENCES NguoiDung (ID),
	FOREIGN KEY (MaBai) REFERENCES BaiViet (MaBai) 
)
---
CREATE TABLE Like_Cmt(
	ID VARCHAR(10),
	MaCmt VARCHAR(10),
	NguoiLike VARCHAR(50),
	PRIMARY KEY (ID),
	FOREIGN KEY (ID) REFERENCES NguoiDung (ID),
	FOREIGN KEY (MaCmt) REFERENCES Comment (MaCmt),

)
CREATE TABLE Like_Bv(
	ID VARCHAR(10),
	MaBai VARCHAR(10),
	NguoiLike VARCHAR(50),
	PRIMARY KEY (ID),
	FOREIGN KEY (ID) REFERENCES NguoiDung (ID),
	FOREIGN KEY (MaBai) REFERENCES BaiViet (MaBai)

)

---
CREATE TABLE Post(
	ID VARCHAR(10) NOT NULL,
	MaBai VARCHAR(10) NOT NULL,
	FOREIGN KEY (ID) REFERENCES NguoiDung (ID),
	FOREIGN KEY (MaBai) REFERENCES BaiViet (MaBai)
)
---
CREATE TABLE File_DL(
	MaFile VARCHAR(10) NOT NULL,
	MaBai VARCHAR(10),
	ChuyenNganh VARCHAR(20),
	TenFile VARCHAR(50),
	PRIMARY KEY (MaFile),
	FOREIGN KEY (MaBai) REFERENCES BaiViet (MaBai)
)