/*
SQLyog Ultimate v8.55 
MySQL - 5.5.5-10.4.17-MariaDB : Database - sman1_pematangsiantar
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sman1_pematangsiantar` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `sman1_pematangsiantar`;

/*Table structure for table `absensi` */

DROP TABLE IF EXISTS `absensi`;

CREATE TABLE `absensi` (
  `id_absensi` char(24) NOT NULL,
  `kode_guru` varchar(255) NOT NULL,
  `id_jadwal` char(8) NOT NULL,
  `kelas` char(5) NOT NULL,
  PRIMARY KEY (`id_absensi`),
  KEY `kode_guru` (`kode_guru`),
  KEY `id_jadwal` (`id_jadwal`),
  CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`kode_guru`) REFERENCES `guru` (`kode_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `absensi_ibfk_2` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `absensi` */

insert  into `absensi`(`id_absensi`,`kode_guru`,`id_jadwal`,`kelas`) values ('A11','SOS','ENG1','XA1'),('A12','SOS','ENG2','XA2'),('A13','SOS','ENG3','XA3'),('B11','HHS','IA1','XA2'),('B12','ASM','MAT1','XA2'),('B13','YDB','MAT3','XA3'),('C11','SPM','Prac','XA1'),('C12','SPM ','Prac3','XA3'),('D11','NAB','SBK','XA1');

/*Table structure for table `akun` */

DROP TABLE IF EXISTS `akun`;

CREATE TABLE `akun` (
  `username` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `role` int(11) NOT NULL CHECK (`role` in (1,2)),
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `akun` */

insert  into `akun`(`username`,`PASSWORD`,`role`) values ('ic41801','12345',2),('ic41802','12345',2),('ic41803','12345',2),('ip21801','12345',2),('ip21802','12345',2),('is31801','12345',2),('is31802','12345',2),('Tu','12345',1);

/*Table structure for table `guru` */

DROP TABLE IF EXISTS `guru`;

CREATE TABLE `guru` (
  `kode_guru` char(24) NOT NULL,
  `NIK` char(24) NOT NULL,
  `username_akun` varchar(255) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Bidang_Pelajaran` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  PRIMARY KEY (`kode_guru`),
  KEY `username_akun` (`username_akun`),
  CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`username_akun`) REFERENCES `akun` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `guru` */

insert  into `guru`(`kode_guru`,`NIK`,`username_akun`,`Nama`,`Bidang_Pelajaran`,`tanggal_lahir`,`tempat_lahir`,`alamat`) values ('ASM','01289341234','ip21802','Andronego Saputra Mohammad','Matematika','1979-01-03','Jakarta','Pematangsiantar'),('HHS','00921347432','ic41801','Hans Situmeang','IPA','1972-02-14','Medan','Medan'),('NAB','00584354432','ic41802','Natasha Agustina Batuara','Seni dan Budaya','1975-04-12','Tebingtinggi','Pematangsiantar'),('SOS','34241432193','ip21801','Surya Octavianius','English','1978-12-21','Semarang','Medan'),('SPM','01328475571','ic41803','Sandro Petrus Manurung','Olahraga','1980-10-13','Pekanbaru','Pematangsiantar'),('WLS','00003418234','is31801','Winda Lusiana Siahaan','IPS','1983-08-12','LubukPakam','Pematangsiantar'),('YDB','10248847389','is31802','Yusron Dansuntris Bangun','Matematika','1982-05-16','Berastagi','Pematangsiantar');

/*Table structure for table `jadwal` */

DROP TABLE IF EXISTS `jadwal`;

CREATE TABLE `jadwal` (
  `id_jadwal` char(8) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_berakhir` time NOT NULL,
  `kode_guru` char(24) NOT NULL,
  `kelas` char(5) NOT NULL,
  PRIMARY KEY (`id_jadwal`),
  KEY `kode_guru` (`kode_guru`),
  KEY `kelas` (`kelas`),
  CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`kode_guru`) REFERENCES `guru` (`kode_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`kelas`) REFERENCES `kelas` (`nama_kelas`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `jadwal` */

insert  into `jadwal`(`id_jadwal`,`jam_mulai`,`jam_berakhir`,`kode_guru`,`kelas`) values ('ENG1','08:00:00','10:00:00','SOS','XA1'),('ENG2','13:00:00','14:00:00','SOS','XA2'),('ENG3','10:00:00','12:00:00','SOS','XA3'),('IA1','08:00:00','10:00:00','HHS','XA2'),('MAT1','10:00:00','12:00:00','ASM','XA2'),('MAT3','13:00:00','14:00:00','YDB','XA3'),('Prac','10:00:00','12:00:00','SPM','XA1'),('Prac3','08:00:00','10:00:00','SPM','XA3'),('SBK','13:00:00','14:00:00','NAB','XA1');

/*Table structure for table `kelas` */

DROP TABLE IF EXISTS `kelas`;

CREATE TABLE `kelas` (
  `nama_kelas` char(5) NOT NULL,
  `walikelas` varchar(255) NOT NULL,
  `jumlah_siswa` int(11) NOT NULL,
  `nama_ketua` varchar(255) NOT NULL,
  PRIMARY KEY (`nama_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `kelas` */

insert  into `kelas`(`nama_kelas`,`walikelas`,`jumlah_siswa`,`nama_ketua`) values ('XA1','D.Hutapea',25,'Daniel Bill Gate Simamora'),('XA2','B.Dongoran',24,'Chelsy'),('XA3','F.Ompusunggu',21,'Loveleen'),('XIA1','R. Lumbantoruan',22,'ebenezer'),('XIA2','S.Sihombing',22,'jose'),('XIA3','A. Nababan',25,'Rizky'),('XIIA1','H. Pardede',22,'lusi'),('XIIA2','B. Sinaga',22,'beni'),('XIIS1','L. Sihotang',25,'david'),('XIIS2','B. hutasoit',21,'aldi'),('XIS1','B. hutasoit',21,'Ari'),('XIS2','D. Sihombing',21,'yesi'),('XS1','W.Sunirat',23,'Nicolas'),('XS2','A.Hutauruk',22,'Yosepri');

/*Table structure for table `orangtua` */

DROP TABLE IF EXISTS `orangtua`;

CREATE TABLE `orangtua` (
  `no_KK` varchar(50) NOT NULL,
  `NIK_ayah` varchar(255) NOT NULL,
  `nama_Ayah` varchar(255) NOT NULL,
  `pekerjaan_Ayah` varchar(50) NOT NULL,
  `penghasilan_Ayah` int(11) NOT NULL,
  `no_telepon_Ayah` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `NIK_Ibu` varchar(255) NOT NULL,
  `nama_Ibu` varchar(255) NOT NULL,
  `pekerjaan_Ibu` varchar(50) NOT NULL,
  `penghasilan_Ibu` int(11) NOT NULL,
  `no_telepon_Ibu` int(11) NOT NULL,
  PRIMARY KEY (`no_KK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `orangtua` */

insert  into `orangtua`(`no_KK`,`NIK_ayah`,`nama_Ayah`,`pekerjaan_Ayah`,`penghasilan_Ayah`,`no_telepon_Ayah`,`alamat`,`NIK_Ibu`,`nama_Ibu`,`pekerjaan_Ibu`,`penghasilan_Ibu`,`no_telepon_Ibu`) values ('000001','2222222','jasing','Saudagar',54000000,1824381910,'Sirongit','2222223','jijay','Pilot',50000000,937321912),('000002','1111111','Hasing','Petani',21000000,1284621912,'Laguboti','1111112','Hohom','Pedagang',18000000,12314837),('000003','1212121','Gojitak','-',300000000,193247430,'Medan','1212122','Lontongu','Guru',54000000,19238842),('111110','1','Hasoloan','Programmer',20000000,2147483647,'Laguboti','2','Teresha','Designer Website',12000000,2147483647),('111111','3','Albert','Pengusaha',15000000,2147483647,'Sirongit','4','Chelsy','Wiraswasta',15000000,2147483647),('111112','5','Putra','Dosen',16000000,2147483647,'Dolok Sanggul','6','Hernael','Dosen',16000000,2147483647),('111113','7','Shawn','Artis',10000000,2147483647,'Laguboti','8','Febiola','Artis',10000000,2147483647),('111114','9','Davin','Wiraswasta',12000000,2147483647,'Laguboti','0','Ison','Wiraswasta',12000000,2147483647),('111115','10','Nael','Guru',8000000,2147483647,'Silaen','11','Yola','Bidan',8000000,2147483647),('111116','12','Febri','Dosen',10000000,2147483647,'Porsea','13','Febby','Dokter',12000000,2147483647),('111117','14','Anas','Dokter',10000000,2147483647,'Sigumpar','15','Irene','Sales',5000000,2147483647),('111118','16','Anang','Artis',10000000,2147483647,'Sigumpar','17','Ashanti','Model',15000000,2147483647),('111119','18','Gunawan','Dokter',16000000,2147483647,'Silimbat','19','Desy','Wiraswasta',15000000,2147483647),('111120','20','Herry','Reporter',12000000,2147483647,'Porsea','21','Octavia','Designer',10000000,2147483647),('111121','22','Justin','PNS',20000000,2147483647,'Laguboti','23','Selli','Designer Website',12000000,2147483647),('111122','24','dani','Pengusaha',15000000,2147483647,'Sirongit','25','Tia','Wiraswasta',15000000,2147483647),('111123','26','boni','Dosen',16000000,2147483647,'Dolok Sanggul','27','Lia','Dosen',16000000,2147483647),('111124','28','Mail','Artis',10000000,2147483647,'Laguboti','29','Bunga','Artis',10000000,2147483647),('111125','30','ahmad','Wiraswasta',12000000,2147483647,'Laguboti','31','Susi','Wiraswasta',12000000,2147483647),('111126','32','gani','Guru',8000000,2147483647,'Silaen','33','santi','Bidan',8000000,2147483647),('111127','34','gading','Dosen',10000000,2147483647,'Porsea','35','grace','Dokter',12000000,2147483647),('111128','36','martin','Dokter',10000000,2147483647,'Sigumpar','37','hanin','Sales',5000000,2147483647),('111129','38','moses','Dokter',10000000,2147483647,'Sigumpar','39','ara','Sales',5000000,2147483647),('111130','40','surya','Dokter',10000000,2147483647,'Sigumpar','41','nevi','Sales',5000000,2147483647),('111131','42','Sehat','PNS',20000000,2147483647,'Laguboti','43','Roma','Designer Website',12000000,2147483647),('111132','44','Arnol','Pengusaha',15000000,2147483647,'Sirongit','45','Gia','Wiraswasta',15000000,2147483647),('111133','46','Lonid','Dosen',16000000,2147483647,'Dolok Sanggul','47','Pia','Dosen',16000000,2147483647),('111134','48','Hail','Artis',10000000,2147483647,'Laguboti','49','Melati','Artis',10000000,2147483647),('111135','50','Ohmad','Wiraswasta',12000000,2147483647,'Laguboti','31','Santi','Wiraswasta',12000000,2147483647),('111136','52','Kani','Guru',8000000,2147483647,'Silaen','53','Rani','Bidan',8000000,2147483647),('111137','54','Dading','Dosen',10000000,2147483647,'Porsea','55','Ayu','Dokter',12000000,2147483647),('111138','56','Lartin','Dokter',10000000,2147483647,'Sigumpar','57','Diya','Sales',5000000,2147483647),('111139','58','Doses','Dokter',10000000,2147483647,'Sigumpar','59','Tiara','Sales',5000000,2147483647),('111140','60','Wurya','Dokter',10000000,2147483647,'Sigumpar','61','Nevong','Sales',5000000,2147483647),('111141','62','Justin','PNS',20000000,2147483647,'Laguboti','63','Selli','Designer Website',12000000,2147483647),('111142','64','dani','Pengusaha',15000000,2147483647,'Sirongit','65','Tia','Wiraswasta',15000000,2147483647),('111143','66','boni','Dosen',16000000,2147483647,'Dolok Sanggul','67','Lia','Dosen',16000000,2147483647),('111144','68','Mail','Artis',10000000,2147483647,'Laguboti','69','Bunga','Artis',10000000,2147483647),('111145','70','ahmad','Wiraswasta',12000000,2147483647,'Laguboti','71','Susi','Wiraswasta',12000000,2147483647),('111146','72','gani','Guru',8000000,2147483647,'Silaen','73','santi','Bidan',8000000,2147483647),('111147','74','gading','Dosen',10000000,2147483647,'Porsea','75','grace','Dokter',12000000,2147483647),('111148','76','martin','Dokter',10000000,2147483647,'Sigumpar','77','hanin','Sales',5000000,2147483647),('111149','78','moses','Dokter',10000000,2147483647,'Sigumpar','79','ara','Sales',5000000,2147483647),('111150','80','surya','Dokter',10000000,2147483647,'Sigumpar','81','nevi','Sales',5000000,2147483647),('111151','82','dani','Pengusaha',15000000,2147483647,'Sirongit','83','Tia','Wiraswasta',15000000,2147483647),('111152','84','boni','Dosen',16000000,2147483647,'Dolok Sanggul','85','Lia','Dosen',16000000,2147483647),('111153','86','Mail','Artis',10000000,2147483647,'Laguboti','87','Bunga','Artis',10000000,2147483647),('111154','88','ahmad','Wiraswasta',12000000,2147483647,'Laguboti','89','Susi','Wiraswasta',12000000,2147483647),('111155','90','gani','Guru',8000000,2147483647,'Silaen','91','santi','Bidan',8000000,2147483647),('111156','92','gading','Dosen',10000000,2147483647,'Porsea','93','grace','Dokter',12000000,2147483647),('111157','94','martin','Dokter',10000000,2147483647,'Sigumpar','95','hanin','Sales',5000000,2147483647),('111158','96','moses','Dokter',10000000,2147483647,'Sigumpar','97','ara','Sales',5000000,2147483647),('111159','98','Lartin','Dokter',10000000,2147483647,'Sigumpar','99','Diya','Sales',5000000,2147483647),('111160','100','surya','Dokter',10000000,2147483647,'Sigumpar','101','nevi','Sales',5000000,2147483647);

/*Table structure for table `siswa` */

DROP TABLE IF EXISTS `siswa`;

CREATE TABLE `siswa` (
  `NISN` char(10) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `kelas` char(5) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jlh_saudara` int(11) NOT NULL,
  `anak_ke` int(11) NOT NULL,
  `no_KK` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  PRIMARY KEY (`NISN`),
  KEY `kelas` (`kelas`),
  KEY `no_KK` (`no_KK`),
  CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`kelas`) REFERENCES `kelas` (`nama_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`no_KK`) REFERENCES `orangtua` (`no_KK`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `siswa` */

insert  into `siswa`(`NISN`,`Nama`,`kelas`,`tempat_lahir`,`tanggal_lahir`,`jlh_saudara`,`anak_ke`,`no_KK`,`alamat`) values ('020XA101','Agnes Monica Simamora','XA1','Pematangsiantar','2002-02-11',5,2,'111150','Marihat'),('020XA102','Alflin Yoakim Pakpahan','XA1','Porsea','2002-10-19',3,2,'111142','Parluasan'),('020XA103','Angela Siadari','XA1','Jakarta','2002-09-18',6,3,'111143','Lapangan Bola Atas'),('020XA104','Bella Melinda Sipayung','XA1','Laguboti','2002-08-17',5,2,'111145','Kampung Kristen'),('020XA105','Charlie Hutasoit','XA1','Dumai','2002-07-16',4,4,'111144','Marihat Baris'),('020XA106','Daniel Bill Gate Simamora','XA1','DeliSerdang','2002-06-15',3,1,'111146','Lapangan Bola Atas'),('020XA107','Dearlyn Merry Christine Togatorop','XA1','Medan','2002-05-14',3,1,'111147','Simpang Dua'),('020XA108','Feny P Siregar','XA1','Simalungun','2002-04-13',4,1,'111148','Jalan Jawa'),('020XA109','Josua Jonathan Purba','XA1','Simalungun','2002-03-21',4,4,'111149','Siantar Kota'),('020XA110','Kevin Manuel Harahap','XA1','Yogyakarta','2002-02-13',2,2,'111112','Pematangsiantar'),('020XA111','Maureen Boasana Bolung','XA1','Minahasa','2002-11-13',4,2,'111152','Siantar Selatan'),('020XA112','Monica Grace Damanik','XA1','Porsea','2002-11-27',7,4,'111153','Laguboti'),('020XA113','Nielsen Lukas Bonar Sinaga','XA1','Sidamanik','2002-08-02',4,1,'111154','Sidamanik'),('020XA114','Rogate Paulus Naibaho','XA1','LubukPakam','2002-10-07',4,2,'111155','Parluasan'),('020XA115','Rona Pinita Silitonga','XA1','Lumban Datu','2002-09-01',5,1,'111156','Marihat'),('020XA116','Sahala Simatupang','XA1','Parapat','2002-08-03',7,1,'111157','Perumnas'),('020XA117','Sanni Asimel Sihombing','XA1','Medan','2002-07-02',1,1,'111158','Siantar Utara'),('020XA118','Sanjaya Gultom','XA1','Pematangsiantar','2001-11-28',5,4,'111116','Sitalasari'),('020XA119','Soputri Ria Marito Siahaan','XA1','Laguboti','2002-06-27',2,1,'111159','Marihat'),('020XA120','Soputra Rio Marito Siahaan','XA1','Laguboti','2002-06-27',2,2,'111159','Marihat'),('020XA121','Tamara Yohana Tambunan','XA1','Silimbat','2002-11-21',4,3,'111127','Laguboti'),('020XA122','Theresia Romauli Siagian','XA1','Porsea','2002-12-09',4,2,'111155','Sitalasari'),('020XA123','Wahyu Theo Cristy Simanjuntak','XA1','Pematangsiantar','2001-12-21',7,4,'111151','Laguboti'),('020XA124','Yesaya Hamonangan Sinaga','XA1','Asahan','2002-11-02',12,10,'111114','Sitalasari'),('020XA125','Yesica Lulu Rachelina Purba','XA1','Lumban Julu','2001-12-05',4,2,'111113','Lapangan Bola Bawah'),('020XA201','Kana','XA2','Dolok Nauli','2000-08-04',2,1,'111119','Laguboti'),('020XA202','Eliezer','XA2','Medan','2000-07-03',1,1,'111110','Laguboti'),('020XA203','Pratama','XA2','Aceh','2000-02-11',5,2,'111121','Laguboti'),('020XA204','Kio','XA2','Medan','2000-11-20',2,1,'111111','Laguboti'),('020XA205','Dalvin','XA2','Porsea','2000-10-19',3,2,'111115','Laguboti'),('020XA206','Selva','XA2','Sigumpar','2000-09-18',6,3,'111116','Laguboti'),('020XA207','Neva','XA2','Laguboti','2000-08-17',5,2,'111145','Laguboti'),('020XA208','Lusi','XA2','Jakarta','2000-07-16',4,4,'111117','Laguboti'),('020XA209','Juni','XA2','Surabaya','2000-06-15',3,1,'111116','Laguboti'),('020XA210','Joni','XA2','Bekasi','2000-05-14',3,1,'111115','Laguboti'),('020XA211','Iwan','XA2','Sitoluama','2000-04-13',3,1,'111116','Laguboti'),('020XA212','Kindy','XA2','Cikarang','2000-03-12',4,4,'111119','Laguboti'),('020XA213','Unni','XA2','Lumban Datu','2000-02-17',3,4,'111140','Laguboti'),('020XA214','Kana','XA2','Dolok Nauli','2000-12-25',3,4,'111156','Laguboti'),('020XA215','Arlan','XA2','Medan','2000-01-05',3,4,'111140','Laguboti'),('020XA216','Richard','XA2','Laguboti','2000-02-06',3,4,'111117','Laguboti'),('020XA217','Ello','XA2','Medan','2000-04-13',3,4,'111145','Laguboti'),('020XA218','Kio','XA2','Medan','2000-11-20',2,1,'111155','Laguboti'),('020XA219','Dalvin','XA2','Porsea','2000-10-19',3,2,'111156','Laguboti'),('020XA220','Selva','XA2','Sigumpar','2000-09-18',6,3,'111112','Laguboti'),('020XA221','Neva','XA2','Laguboti','2000-08-17',5,2,'111114','Laguboti'),('020XA222','Lusi','XA2','Jakarta','2000-07-16',4,4,'111116','Laguboti'),('020XA223','Juni','XA2','Surabaya','2000-06-15',3,1,'111123','Laguboti'),('020XA224','Joni','XA2','Bekasi','2000-05-14',3,1,'111127','Laguboti'),('020XA225','Juna','XA2','Lumban Julu','2000-03-19',3,4,'111141','Laguboti'),('020XA301','Fedrick','XA3','Surabaya','2000-01-01',3,4,'111118','Laguboti'),('020XA302','Glorian','XA3','Bekasi','2000-05-21',3,4,'111119','Laguboti'),('020XA303','Christian','XA3','Sitoluama','2000-06-23',3,4,'111134','Laguboti'),('020XA304','Febry','XA3','Cikarang','2000-05-24',3,4,'111145','Laguboti'),('020XA305','Yanti','XA3','Aceh','2000-12-04',3,4,'111146','Laguboti'),('020XA306','Einsten','XA3','Silimbat','2000-07-06',3,4,'111147','Laguboti'),('020XA307','Samuel','XA3','Laguboti','2000-04-25',3,4,'111160','Laguboti'),('020XA308','Bryan','XA3','Porsea','2000-03-05',3,4,'111159','Laguboti'),('020XA309','Oliver','XA3','Siraituruk','2000-06-14',3,4,'111145','Laguboti'),('020XA310','Haposan','XA3','Lumban Datu','2000-02-17',3,4,'111140','Laguboti'),('020XA311','Josua','XA3','Dolok Nauli','2000-12-25',3,4,'111156','Laguboti'),('020XA312','Ernest','XA3','Medan','2000-01-05',3,4,'111117','Laguboti'),('020XA313','Edrick','XA3','Laguboti','2000-02-06',3,4,'111117','Laguboti'),('020XA314','Evi','XA3','Medan','2000-04-13',3,4,'111145','Laguboti'),('020XA315','Rosalinda','XA3','Medan','2000-11-20',2,1,'111155','Laguboti'),('020XA316','Manginar','XA3','Porsea','2000-10-19',3,2,'111156','Laguboti'),('020XA317','Grace','XA3','Sigumpar','2000-09-18',6,3,'111112','Laguboti'),('020XA318','Chacha','XA3','Laguboti','2000-08-17',5,2,'111114','Laguboti'),('020XA319','Nani Natalia','XA3','Jakarta','2000-07-16',4,4,'111116','Laguboti'),('020XA320','Karyn','XA3','Surabaya','2000-06-15',3,1,'111123','Laguboti'),('020XA321','Leoni','XA3','Bekasi','2000-05-14',3,1,'111127','Laguboti'),('020XA322','Meri','XA3','Sitoluama','2000-04-13',3,1,'111146','Laguboti'),('020XA323','Suryani','XA3','Cikarang','2000-03-12',4,4,'111157','Laguboti'),('020XA324','Natasha','XA3','Laguboti','2000-04-25',3,4,'111111','Laguboti'),('020XA325','Gabriella','XA3','Lumban Julu','2000-03-19',3,4,'111141','Laguboti'),('020XA326','Jesika','XA3','Bekasi','2000-05-21',3,4,'111119','Laguboti'),('020XS101','Laprina','XS1','Sitoluama','2000-06-23',3,4,'111134','Laguboti'),('020XS102','Anisa','XS1','Cikarang','2000-05-24',3,4,'111145','Laguboti'),('020XS103','Nurcahaya','XS1','Aceh','2000-12-04',3,4,'111146','Laguboti'),('020XS104','Kerentyrna','XS1','Silimbat','2000-07-06',3,4,'111147','Laguboti'),('020XS105','Putri','XS1','Laguboti','2000-04-25',3,4,'111160','Laguboti'),('020XS106','Damayanti','XS1','Porsea','2000-03-05',3,4,'111159','Laguboti'),('020XS107','Patuan','XS1','Siraituruk','2000-06-14',3,4,'111145','Laguboti'),('020XS108','Natanael','XS1','Jakarta','2019-06-30',5,1,'000001','Malang'),('020XS109','Agnes','XS1','Silimbat','2000-07-06',5,3,'111144','Laguboti'),('020XS110','Kesya','XS1','Laguboti','2000-04-25',5,3,'111122','Laguboti'),('020XS111','Putra','XS1','Porsea','2000-03-05',5,3,'111132','Laguboti'),('020XS112','Toba','XS1','Siraituruk','2000-06-14',4,4,'111123','Laguboti'),('020XS113','Paul','XS1','Lumban Julu','2000-03-19',4,2,'111134','Laguboti'),('020XS114','Martin','XS1','Lumban Datu','2000-02-17',3,3,'111143','Laguboti'),('020XS115','Parsaulian ','XS1','Dolok Nauli','2000-12-25',3,1,'111141','Laguboti'),('020XS116','Immanuel','XS1','Laguboti','2000-02-06',5,2,'111159','Laguboti'),('020XS117','Yusuf','XS1','Medan','2000-04-13',4,1,'111156','Laguboti'),('020XS118','Relano','XS1','Aceh','2000-12-04',6,4,'111145','Laguboti'),('020XS119','Pandu','XS1','Medan','2000-10-15',5,3,'111110','Laguboti'),('020XS120','Navaldi','XS1','Sigumpar','2000-12-15',4,3,'111132','Laguboti'),('020XS201','Ezri','XS2','Laguboti','2000-10-14',4,1,'111132','Laguboti'),('020XS202','Jeremi','XS2','Jakarta','2000-12-16',3,3,'111112','Laguboti'),('020XS203','Johannes','XS2','Surabaya','2000-01-01',4,2,'111117','Laguboti'),('020XS204','Fransiskua','XS2','Bekasi','2000-05-21',5,3,'111115','Laguboti'),('555559','Dodi','XS2','Cikarang','2000-05-24',4,2,'111160','Laguboti');

/*Table structure for table `staf_tata_usaha` */

DROP TABLE IF EXISTS `staf_tata_usaha`;

CREATE TABLE `staf_tata_usaha` (
  `NIK` varchar(255) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `username_akun` varchar(255) NOT NULL,
  KEY `username_akun` (`username_akun`),
  CONSTRAINT `staf_tata_usaha_ibfk_1` FOREIGN KEY (`username_akun`) REFERENCES `akun` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `staf_tata_usaha` */

insert  into `staf_tata_usaha`(`NIK`,`Nama`,`tempat_lahir`,`tanggal_lahir`,`username_akun`) values ('122321','Admin','Laguboti','1992-03-24','Tu');

/*Table structure for table `status_absensi_siswa` */

DROP TABLE IF EXISTS `status_absensi_siswa`;

CREATE TABLE `status_absensi_siswa` (
  `kehadiran` char(24) NOT NULL CHECK (`kehadiran` in ('Hadir','Sakit','Izin','Tanpa Keterangan')),
  `id_absensi` char(24) NOT NULL,
  `NISN` char(10) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_absensi`,`NISN`,`tanggal`),
  KEY `NISN` (`NISN`),
  CONSTRAINT `status_absensi_siswa_ibfk_1` FOREIGN KEY (`id_absensi`) REFERENCES `absensi` (`id_absensi`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `status_absensi_siswa_ibfk_2` FOREIGN KEY (`NISN`) REFERENCES `siswa` (`NISN`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `status_absensi_siswa` */

insert  into `status_absensi_siswa`(`kehadiran`,`id_absensi`,`NISN`,`tanggal`) values ('hadir','A11','020XA101','2021-04-28'),('sakit','A11','020XA102','2021-04-28'),('hadir','A11','020XA103','2021-04-28'),('hadir','A11','020XA104','2021-04-28'),('hadir','A11','020XA105','2021-04-28'),('izin','A11','020XA106','2021-04-28'),('hadir','A11','020XA107','2021-04-28'),('sakit','A11','020XA108','2021-04-28'),('izin','A11','020XA109','2021-04-28'),('hadir','A11','020XA110','2021-04-28'),('hadir','A11','020XA111','2021-04-28'),('hadir','A11','020XA112','2021-04-28'),('hadir','A11','020XA113','2021-04-28'),('hadir','A11','020XA114','2021-04-28'),('hadir','A11','020XA115','2021-04-28'),('sakit','A11','020XA116','2021-04-28'),('hadir','A11','020XA117','2021-04-28'),('hadir','A11','020XA118','2021-04-28'),('izin','A11','020XA119','2021-04-28'),('sakit','A11','020XA120','2021-04-28'),('hadir','A11','020XA121','2021-04-28'),('hadir','A11','020XA122','2021-04-28'),('hadir','A11','020XA123','2021-04-28'),('hadir','A11','020XA124','2021-04-28'),('hadir','A11','020XA125','2021-04-28');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
