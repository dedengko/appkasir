
-- Database Backup --
-- Ver. : 1.0.1
-- Host : Server Host
-- Generating Time : Jan 26, 2024 at 09:09:42:AM


CREATE TABLE `detailpenjualan` (
  `DetailID` int(11) NOT NULL AUTO_INCREMENT,
  `PenjualanID` int(11) NOT NULL,
  `ProdukID` int(11) NOT NULL,
  `JumlahProduk` int(11) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  PRIMARY KEY (`DetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

INSERT INTO detailpenjualan VALUES
("7","5","13","1","20000.00"),
("9","7","2","1","2000.00"),
("10","7","4","1","4500.00"),
("11","7","7","1","4000.00"),
("12","8","2","2","2000.00"),
("13","8","4","1","4500.00"),
("14","8","5","1","90000.00"),
("15","8","7","1","4000.00"),
("18","11","2","1","2000.00"),
("19","11","4","1","4500.00"),
("20","11","5","1","90000.00");

CREATE TABLE `keranjang` (
  `keranjangid` int(10) NOT NULL AUTO_INCREMENT,
  `produkid` int(10) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  PRIMARY KEY (`keranjangid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;


CREATE TABLE `pelanggan` (
  `PelangganID` int(11) NOT NULL AUTO_INCREMENT,
  `NamaPelanggan` varchar(255) NOT NULL,
  `Alamat` text NOT NULL,
  `NomorTelepon` varchar(15) NOT NULL,
  PRIMARY KEY (`PelangganID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

INSERT INTO pelanggan VALUES
("4","Umum","Umum","088888888887"),
("5","Nia","Dalung","085739198232"),
("6","William","Pesona Dalung Permai","08419179123"),
("7","Zaid","Dalung","087777"),
("8","Nabila","Pesona Indah","0899531231");

CREATE TABLE `penjualan` (
  `PenjualanID` int(11) NOT NULL AUTO_INCREMENT,
  `TanggalPenjualan` date NOT NULL,
  `TotalHarga` decimal(10,2) NOT NULL,
  `PelangganID` int(11) NOT NULL,
  PRIMARY KEY (`PenjualanID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

INSERT INTO penjualan VALUES
("5","2024-01-18","20000.00","8"),
("7","2024-01-01","10500.00","5"),
("8","2024-01-25","102500.00","5"),
("11","2024-01-25","96500.00","5");

CREATE TABLE `produk` (
  `produkid` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(225) NOT NULL,
  `namaproduk` varchar(25) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL,
  PRIMARY KEY (`produkid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

INSERT INTO produk VALUES
("2","8993007001694","Susu Kental Manis Indomil","2000.00","112"),
("4","850544005340","Dancow","4500.00","113"),
("5","711844160057","ABC APEL","90000.00","2"),
("7","8991002122000","ABC EXO CHOCOMALT","4000.00","30"),
("8","711844110021","ABC KECAP SASET","6500.00","25"),
("9","8991002101265","ABC KOPI PLUS 18 GR SCT","6000.00","46"),
("10","8991002101630","ABC KOPI SUSU 32 GR SCT","18000.00","60"),
("11","711844130111","ABC SAUCE TOMAT BTL 135mL","15000.00","55"),
("12","711844140059","ABC SAUS TIRAMBTL 135mL","15000.00","50"),
("13","8992772122245","ADEM SARI","20000.00","32"),
("14","8992772586016"," ADEM SARI CK KLG 320mL","9000.00","28"),
("15","8992855888235","AGAR AGAR POWDER RED","35000.00","65"),
("16","8992933434118","AGARASA EKONOMI COKLAT 12","34000.00","78"),
("17","8999918443509","AIM ANEKA SQUAREPUFF 300 ","13000.00","80"),
("18","8993539111205","AIR CUP 600 BTL","3000.00","85"),
("19","8991002101746","ABC KOPI+SUSU+MOCHA 10X27","13500.00","100"),
("20","711844120105","ABC SAMBAL MANIS PEDAS","9000.00","110"),
("21","711844120105","ABC SAMBAL MANIS PEDAS","9000.00","110"),
("22","8886001038011","Beng Beng","2000.00","15"),
("24","8573901293","Kuku Bima","2500.00","124"),
("32","809547631234","Ice Cream","5000.00","124"),
("33","8083217742","Jasjus","1500.00","12");

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `hak_akses` int(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

INSERT INTO user VALUES
("1","Gede Erick","admin","admin","1"),
("3","Nabil","admin","1234","2");