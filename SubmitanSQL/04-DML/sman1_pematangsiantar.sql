

CREATE DATABASE /*!32312 IF NOT EXISTS*/`sman1_pematangsiantar` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;




/*Table structure for table `absensi` */



DROP TABLE IF EXISTS `absensi`;



CREATE TABLE `absensi` (
  `id_absensi` VARCHAR(72) DEFAULT NULL,
  `kode_guru` VARCHAR(765) DEFAULT NULL,
  `id_jadwal` VARCHAR(15) DEFAULT NULL,
  `kelas` VARCHAR(15) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;



/*Data for the table `absensi` */


INSERT  INTO `absensi`(`id_absensi`,`kode_guru`,`id_jadwal`,`kelas`) VALUES ('A11','HHS                     ','ASN1','7A'),('A12','NAB','ASN3','7A'),('A13','SPM','ASN5','7A'),('A21','NAB','ASL1','7A'),('A22','WLS','ASL3','7A'),('A23','WSS','ASL4','7A'),('A31','SPM','ARB1','7A'),('A32','HHS                     ','ARB3','7A'),('A33','WLS','ARB5','7A'),('A41','WSS','AKM1','7A'),('A42','WLS','AKM2','7A'),('A43','HHS                     ','AKM4','7A'),('A51','HHS                     ','AJM1','7A'),('A52','SPM','AJM3','7A'),('A53','WLS','AJM5','7A'),('A61','HHS                     ','ASB1','7A'),('A62','WSS','ASB3','7A'),('A63','NAB','ASB5','7A'),('B11','NAB','BSN1','7B'),('B12','WSS','BSN3','7B'),('B13','HHS                     ','BSN5','7B'),('B21','WLS','BSL1','7B'),('B22','SPM','BSL3','7B'),('B23','HHS                     ','BSL4','7B'),('B31','HHS                     ','BRB1','7B'),('B32','WLS','BRB3','7B'),('B33','SPM','BRB5','7B'),('B41','WSS','BKM1','7B'),('B42','HHS                     ','BKM2','7B'),('B43','HHS                     ','BKM4','7B'),('B51','SPM','BJM1','7B'),('B52','WSS','BJM3','7B'),('B53','WLS','BJM5','7B'),('B61','SPM','BSB1','7B'),('B62','HHS                     ','BSB3','7B'),('B63','NAB','BSB5','7B'),('C11','WSS','CSN1','7C'),('C12','NAB','CSN3','7C'),('C13','WLS','CSN5','7C'),('C21','HHS                     ','CSL1','7C'),('C22','HHS                     ','CSL3','7C'),('C23','SPM','CSL4','7C'),('C31','WLS','CRB1','7C'),('C32','HHS                     ','CRB3','7C'),('C33','WSS','CRB5','7C'),('C41','SPM','CKM1','7C'),('C42','HHS                     ','CKM2','7C'),('C43','HHS                     ','CKM4','7C'),('C51','WSS','CJM1','7C'),('C52','SPM','CJM3','7C'),('C53','SPM','CJM5','7C'),('C61','WLS','CSB1','7C'),('C62','NAB','CSB3','7C'),('C63','HHS                     ','CSB5','7C'),('D71','NAB','TRY1','XA1'),('D72','NAB','coba','XA2');



/*Table structure for table `akun` */



DROP TABLE IF EXISTS `akun`;



CREATE TABLE `akun` (
  `username` VARCHAR(765) DEFAULT NULL,
  `PASSWORD` VARCHAR(765) DEFAULT NULL,
  `role` DOUBLE DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;



/*Data for the table `akun` */



INSERT  INTO `akun`(`username`,`PASSWORD`,`role`) VALUES ('Tu','12345',1),('if318006','12345',2),('if318025','12345',2),('if318029','12345',2),('if318051','12345',2),('if318055','12345',2),('if318063','12345',2);



/*Table structure for table `guru` */



DROP TABLE IF EXISTS `guru`;



CREATE TABLE `guru` (
  `kode_guru` VARCHAR(72) DEFAULT NULL,
  `NIK` VARCHAR(72) DEFAULT NULL,
  `username_akun` VARCHAR(765) DEFAULT NULL,
  `Nama` VARCHAR(765) DEFAULT NULL,
  `Bidang_Pelajaran` VARCHAR(150) DEFAULT NULL,
  `tanggal_lahir` DATE DEFAULT NULL,
  `tempat_lahir` VARCHAR(150) DEFAULT NULL,
  `alamat` VARCHAR(765) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;



/*Data for the table `guru` */



INSERT  INTO `guru`(`kode_guru`,`NIK`,`username_akun`,`Nama`,`Bidang_Pelajaran`,`tanggal_lahir`,`tempat_lahir`,`alamat`) VALUES ('SOS','34241432193','if318029','Surya Octavianius ','English','2001-12-23','Semarang','Medan'),('HHS','00921347432','if318055','Hansen Situmorang','Pemrograman','2000-10-10','Medan','Medan'),('NAB','00584354432','if318006','Nevi Aktasia Banjarnahor','Seni dan Budaya','2000-05-28','Medan','Doloksanggul'),('SPM','01328475571','if318025','Sopian Manurung','Olahraga','2001-03-23','Lumban Julu','Lumban Julu'),('WLS','00003418234','if318051','Winda Lorenza Sinurat','Ilmu Pengetahuan dan Sosial','2000-02-27','Porsea','Porsea'),('WSS','01289341234','if318063','Winanda Sesilia Sinaga','Ilmu Pengetahuan Alam','2000-04-30','Lumban Julu','Doloksanggul'),('YDB','10248847389','if318066','Yosepri Disyandro Berutu','Fisika','1998-09-24','Medan','Medan');



/*Table structure for table `jadwal` */



DROP TABLE IF EXISTS `jadwal`;



CREATE TABLE `jadwal` (
  `id_jadwal` VARCHAR(24) DEFAULT NULL,
  `jam_mulai` TIME DEFAULT NULL,
  `jam_berakhir` TIME DEFAULT NULL,
  `kode_guru` VARCHAR(72) DEFAULT NULL,
  `kelas` VARCHAR(12) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;



/*Data for the table `jadwal` */



INSERT  INTO `jadwal`(`id_jadwal`,`jam_mulai`,`jam_berakhir`,`kode_guru`,`kelas`) VALUES ('ENGLISH','14:00:00','15:00:00','SOS','XA1'),('AJM1','08:00:00','10:00:00','HHS','XA2'),('AJM3','10:00:00','12:00:00','SPM','7A'),('AJM5','12:00:00','19:00:00','WLS','7A'),('AKM1','08:00:00','09:00:00','WSS','7A'),('AKM2','09:00:00','10:00:00','WLS','7A'),('AKM4','10:00:00','13:00:00','HHS','7A'),('ARB1','08:00:00','10:00:00','SPM','7A'),('ARB3','10:00:00','12:00:00','HHS','7A'),('ARB5','12:00:00','17:00:00','WLS','7A'),('ASB1','08:00:00','10:00:00','HHS','7A'),('ASB3','08:00:00','12:00:00','WSS','7A'),('ASB5','12:00:00','17:00:00','NAB','7A'),('ASL1','08:00:00','10:00:00','NAB','7A'),('ASL3','10:00:00','11:00:00','WLS','7A'),('ASL4','11:00:00','17:00:00','WSS','7A'),('ASN1','08:00:00','10:00:00','HHS','7A'),('ASN3','10:00:00','12:00:00','NAB','7A'),('ASN5','12:00:00','17:00:00','SPM','7A'),('BJM1','08:00:00','10:00:00','SPM','7B'),('BJM3','10:00:00','12:00:00','WSS','7B'),('BJM5','12:00:00','17:00:00','WLS','7B'),('BKM1','08:00:00','09:00:00','WSS','7B'),('BKM2','09:00:00','10:00:00','HHS','7B'),('BKM4','10:00:00','13:00:00','HHS','7B'),('BRB1','08:00:00','10:00:00','HHS','7B'),('BRB3','10:00:00','12:00:00','HHS','7B'),('BRB5','12:00:00','17:00:00','SPM','7B'),('BSB1','08:00:00','10:00:00','SPM','7B'),('BSB3','08:00:00','12:00:00','HHS','7B'),('BSB5','12:00:00','17:00:00','NAB','7B'),('BSL1','08:00:00','10:00:00','WLS','7B'),('BSL3','10:00:00','11:00:00','SPM','7B'),('BSL4','11:00:00','17:00:00','HHS','7B'),('BSN1','08:00:00','10:00:00','NAB','7B'),('BSN3','10:00:00','12:00:00','WSS','7B'),('BSN5','12:00:00','17:00:00','HHS','7B'),('CJM1','08:00:00','10:00:00','WSS','7C'),('CJM3','10:00:00','12:00:00','SPM','7C'),('CJM5','12:00:00','17:00:00','SPM','7C'),('CKM1','08:00:00','09:00:00','SPM','7C'),('CKM2','09:00:00','10:00:00','HHS','7C'),('CKM4','11:00:00','13:00:00','HHS','7C'),('CRB1','08:00:00','10:00:00','HHS','7C'),('CRB3','10:00:00','12:00:00','HHS','7C'),('CRB5','12:00:00','13:00:00','WSS','7C'),('CSB1','08:00:00','10:00:00','WLS','7C'),('CSB3','08:00:00','12:00:00','NAB','7C'),('CSB5','12:00:00','13:00:00','HHS','7C'),('CSL1','08:00:00','10:00:00','HHS','7C'),('CSL3','10:00:00','11:00:00','HHS','7C'),('CSL4','11:00:00','13:00:00','SPM','7C'),('CSN1','08:00:00','10:00:00','WSS','7C'),('CSN3','10:00:00','12:00:00','NAB','7C'),('CSN5','12:00:00','13:00:00','WLS','7C'),('TRY1','21:40:00','23:45:00','NAB','XA1'),('TRY01','22:50:00','23:15:00','NAB','7A'),('BUGAR1','22:30:00','23:00:00','SPM','7A'),('coba','21:50:00','22:30:00','NAB','XA2');



/*Table structure for table `kelas` */



DROP TABLE IF EXISTS `kelas`;



CREATE TABLE `kelas` (
  `nama_kelas` VARCHAR(12) DEFAULT NULL,
  `walikelas` VARCHAR(765) DEFAULT NULL,
  `jumlah_siswa` DOUBLE DEFAULT NULL,
  `nama_ketua` VARCHAR(765) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;



/*Data for the table `kelas` */



INSERT  INTO `kelas`(`nama_kelas`,`walikelas`,`jumlah_siswa`,`nama_ketua`) VALUES ('XA1','D.Hutapea',25,'Sandro'),('XA2','B.Dongoran',24,'Chelsy'),('XA3','F.Ompusunggu',21,'Loveleen'),('XS1','W.Sunirat',23,'Nicolas'),('XS2','A.Hutauruk',22,'Yosepri'),('8A','B. Situmorang',21,'simon'),('8B','R. Lumbantoruan',22,'ebenezer'),('8C','S.Sihombing',22,'jose'),('8D','A. Nababan',25,'Rizky'),('8E','B. hutasoit',21,'Ari'),('9A','D. Sihombing',21,'yesi'),('9B','H. Pardede',22,'lusi'),('9C','B. Sinaga',22,'beni'),('9D','L. Sihotang',25,'david'),('9E','B. hutasoit',21,'aldi');



/*Table structure for table `orangtua` */



DROP TABLE IF EXISTS `orangtua`;



CREATE TABLE `orangtua` (
  `no_KK` VARCHAR(150) DEFAULT NULL,
  `NIK_ayah` VARCHAR(765) DEFAULT NULL,
  `nama_Ayah` VARCHAR(765) DEFAULT NULL,
  `pekerjaan_Ayah` VARCHAR(150) DEFAULT NULL,
  `penghasilan_Ayah` DOUBLE DEFAULT NULL,
  `no_telepon_Ayah` DOUBLE DEFAULT NULL,
  `alamat` VARCHAR(765) DEFAULT NULL,
  `NIK_Ibu` VARCHAR(765) DEFAULT NULL,
  `nama_Ibu` VARCHAR(765) DEFAULT NULL,
  `pekerjaan_Ibu` VARCHAR(150) DEFAULT NULL,
  `penghasilan_Ibu` DOUBLE DEFAULT NULL,
  `no_telepon_Ibu` DOUBLE DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;



/*Data for the table `orangtua` */



INSERT  INTO `orangtua`(`no_KK`,`NIK_ayah`,`nama_Ayah`,`pekerjaan_Ayah`,`penghasilan_Ayah`,`no_telepon_Ayah`,`alamat`,`NIK_Ibu`,`nama_Ibu`,`pekerjaan_Ibu`,`penghasilan_Ibu`,`no_telepon_Ibu`) VALUES ('000001','2222222','jasing','Saudagar',54000000,1824381910,'Sirongit','2222223','jijay','Pilot',50000000,937321912),('000002','1111111','Hasing','Petani',21000000,1284621912,'Laguboti','1111112','Hohom','Pedagang',18000000,12314837),('000003','1212121','Gojitak','-',300000000,193247430,'Medan','1212122','Lontongu','Guru',54000000,19238842),('111110','1','Hasoloan','Programmer',20000000,2147483647,'Laguboti','2','Teresha','Designer Website',12000000,2147483647),('111111','3','Albert','Pengusaha',15000000,2147483647,'Sirongit','4','Chelsy','Wiraswasta',15000000,2147483647),('111112','5','Putra','Dosen',16000000,2147483647,'Dolok Sanggul','6','Hernael','Dosen',16000000,2147483647),('111113','7','Shawn','Artis',10000000,2147483647,'Laguboti','8','Febiola','Artis',10000000,2147483647),('111114','9','Davin','Wiraswasta',12000000,2147483647,'Laguboti','0','Ison','Wiraswasta',12000000,2147483647),('111115','10','Nael','Guru',8000000,2147483647,'Silaen','11','Yola','Bidan',8000000,2147483647),('111116','12','Febri','Dosen',10000000,2147483647,'Porsea','13','Febby','Dokter',12000000,2147483647),('111117','14','Anas','Dokter',10000000,2147483647,'Sigumpar','15','Irene','Sales',5000000,2147483647),('111118','16','Anang','Artis',10000000,2147483647,'Sigumpar','17','Ashanti','Model',15000000,2147483647),('111119','18','Gunawan','Dokter',16000000,2147483647,'Silimbat','19','Desy','Wiraswasta',15000000,2147483647),('111120','20','Herry','Reporter',12000000,2147483647,'Porsea','21','Octavia','Designer',10000000,2147483647),('111121','22','Justin','PNS',20000000,2147483647,'Laguboti','23','Selli','Designer Website',12000000,2147483647),('111122','24','dani','Pengusaha',15000000,2147483647,'Sirongit','25','Tia','Wiraswasta',15000000,2147483647),('111123','26','boni','Dosen',16000000,2147483647,'Dolok Sanggul','27','Lia','Dosen',16000000,2147483647),('111124','28','Mail','Artis',10000000,2147483647,'Laguboti','29','Bunga','Artis',10000000,2147483647),('111125','30','ahmad','Wiraswasta',12000000,2147483647,'Laguboti','31','Susi','Wiraswasta',12000000,2147483647),('111126','32','gani','Guru',8000000,2147483647,'Silaen','33','santi','Bidan',8000000,2147483647),('111127','34','gading','Dosen',10000000,2147483647,'Porsea','35','grace','Dokter',12000000,2147483647),('111128','36','martin','Dokter',10000000,2147483647,'Sigumpar','37','hanin','Sales',5000000,2147483647),('111129','38','moses','Dokter',10000000,2147483647,'Sigumpar','39','ara','Sales',5000000,2147483647),('111130','40','surya','Dokter',10000000,2147483647,'Sigumpar','41','nevi','Sales',5000000,2147483647),('111131','42','Sehat','PNS',20000000,2147483647,'Laguboti','43','Roma','Designer Website',12000000,2147483647),('111132','44','Arnol','Pengusaha',15000000,2147483647,'Sirongit','45','Gia','Wiraswasta',15000000,2147483647),('111133','46','Lonid','Dosen',16000000,2147483647,'Dolok Sanggul','47','Pia','Dosen',16000000,2147483647),('111134','48','Hail','Artis',10000000,2147483647,'Laguboti','49','Melati','Artis',10000000,2147483647),('111135','50','Ohmad','Wiraswasta',12000000,2147483647,'Laguboti','31','Santi','Wiraswasta',12000000,2147483647),('111136','52','Kani','Guru',8000000,2147483647,'Silaen','53','Rani','Bidan',8000000,2147483647),('111137','54','Dading','Dosen',10000000,2147483647,'Porsea','55','Ayu','Dokter',12000000,2147483647),('111138','56','Lartin','Dokter',10000000,2147483647,'Sigumpar','57','Diya','Sales',5000000,2147483647),('111139','58','Doses','Dokter',10000000,2147483647,'Sigumpar','59','Tiara','Sales',5000000,2147483647),('111140','60','Wurya','Dokter',10000000,2147483647,'Sigumpar','61','Nevong','Sales',5000000,2147483647),('111141','62','Justin','PNS',20000000,2147483647,'Laguboti','63','Selli','Designer Website',12000000,2147483647),('111142','64','dani','Pengusaha',15000000,2147483647,'Sirongit','65','Tia','Wiraswasta',15000000,2147483647),('111143','66','boni','Dosen',16000000,2147483647,'Dolok Sanggul','67','Lia','Dosen',16000000,2147483647),('111144','68','Mail','Artis',10000000,2147483647,'Laguboti','69','Bunga','Artis',10000000,2147483647),('111145','70','ahmad','Wiraswasta',12000000,2147483647,'Laguboti','71','Susi','Wiraswasta',12000000,2147483647),('111146','72','gani','Guru',8000000,2147483647,'Silaen','73','santi','Bidan',8000000,2147483647),('111147','74','gading','Dosen',10000000,2147483647,'Porsea','75','grace','Dokter',12000000,2147483647),('111148','76','martin','Dokter',10000000,2147483647,'Sigumpar','77','hanin','Sales',5000000,2147483647),('111149','78','moses','Dokter',10000000,2147483647,'Sigumpar','79','ara','Sales',5000000,2147483647),('111150','80','surya','Dokter',10000000,2147483647,'Sigumpar','81','nevi','Sales',5000000,2147483647),('111151','82','dani','Pengusaha',15000000,2147483647,'Sirongit','83','Tia','Wiraswasta',15000000,2147483647),('111152','84','boni','Dosen',16000000,2147483647,'Dolok Sanggul','85','Lia','Dosen',16000000,2147483647),('111153','86','Mail','Artis',10000000,2147483647,'Laguboti','87','Bunga','Artis',10000000,2147483647),('111154','88','ahmad','Wiraswasta',12000000,2147483647,'Laguboti','89','Susi','Wiraswasta',12000000,2147483647),('111155','90','gani','Guru',8000000,2147483647,'Silaen','91','santi','Bidan',8000000,2147483647),('111156','92','gading','Dosen',10000000,2147483647,'Porsea','93','grace','Dokter',12000000,2147483647),('111157','94','martin','Dokter',10000000,2147483647,'Sigumpar','95','hanin','Sales',5000000,2147483647),('111158','96','moses','Dokter',10000000,2147483647,'Sigumpar','97','ara','Sales',5000000,2147483647),('111159','98','Lartin','Dokter',10000000,2147483647,'Sigumpar','99','Diya','Sales',5000000,2147483647),('111160','100','surya','Dokter',10000000,2147483647,'Sigumpar','101','nevi','Sales',5000000,2147483647);



/*Table structure for table `siswa` */



DROP TABLE IF EXISTS `siswa`;



CREATE TABLE `siswa` (
  `NISN` VARCHAR(30) DEFAULT NULL,
  `Nama` VARCHAR(765) DEFAULT NULL,
  `kelas` VARCHAR(12) DEFAULT NULL,
  `tempat_lahir` VARCHAR(765) DEFAULT NULL,
  `tanggal_lahir` DATE DEFAULT NULL,
  `jlh_saudara` DOUBLE DEFAULT NULL,
  `anak_ke` DOUBLE DEFAULT NULL,
  `no_KK` VARCHAR(150) DEFAULT NULL,
  `alamat` VARCHAR(765) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;



/*Data for the table `siswa` */



INSERT  INTO `siswa`(`NISN`,`Nama`,`kelas`,`tempat_lahir`,`tanggal_lahir`,`jlh_saudara`,`anak_ke`,`no_KK`,`alamat`) VALUES ('020XA101','Agnes Monica Simamora','XA1','Pematangsiantar','2002-02-11',5,2,'111150','Marihat'),('020XA102','Alflin Yoakim Pakpahan','XA1','Porsea','2002-10-19',3,2,'111142','Parluasan'),('020XA103','Angela Siadari','XA1','Jakarta','2002-09-18',6,3,'111143','Lapangan Bola Atas'),('020XA104','Bella Melinda Sipayung','XA1','Laguboti','2002-08-17',5,2,'111145','Kampung Kristen'),('020XA105','Charlie Hutasoit','XA1','Dumai','2002-07-16',4,4,'111144','Marihat Baris'),('020XA106','Daniel Bill Gate Simamora','XA1','DeliSerdang','2002-06-15',3,1,'111146','Lapangan Bola Atas'),('020XA107','Dearlyn Merry Christine Togatorop','XA1','Medan','2002-05-14',3,1,'111147','Simpang Dua'),('020XA108','Feny P Siregar','XA1','Simalungun','2002-04-13',4,1,'111148','Jalan Jawa'),('020XA109','Josua Jonathan Purba','XA1','Simalungun','2002-03-21',4,4,'111149','Siantar Kota'),('020XA111','Maureen Boasana Bolung','XA1','Minahasa','2002-11-13',4,2,'111152','Siantar Selatan'),('020XA112','Monica Grace Damanik','XA1','Porsea','2002-11-27',7,4,'111153','Laguboti'),('020XA113','Nielsen Lukas Bonar Sinaga','XA1','Sidamanik','2002-08-02',4,1,'111154','Sidamanik'),('020XA114','Rogate Paulus Naibaho','XA1','LubukPakam','2002-10-07',4,2,'111155','Parluasan'),('020XA115','Rona Pinita Silitonga','XA1','Lumban Datu','2002-09-01',5,1,'111156','Marihat'),('020XA116','Sahala Simatupang','XA1 ','Parapat','2002-08-03',7,1,'111157','Perumnas'),('020XA117','Sanni Asimel Sihombing','XA1','Medan','2002-07-02',1,1,'111158','Siantar Utara'),('020XA119','Soputri Ria Marito Siahaan','XA1','Laguboti','2002-06-27',2,1,'111159','Marihat'),('020XA120','Soputra Rio Marito Siahaan','XA1','Laguboti','2002-06-27',2,2,'111159','Marihat'),('020XA121','Tamara Yohana Tambunan','XA1','Silimbat','2002-11-21',4,3,'111127','Laguboti'),('020XA122','Theresia Romauli Siagian','XA1 ','Porsea','2002-12-09',4,2,'111155','Sitalasari'),('020XA123','Wahyu Theo Cristy Simanjuntak','XA1','Pematangsiantar','2001-12-21',7,4,'111151','Laguboti'),('020XA124','Yesaya Hamonangan Sinaga','XA1','Asahan','2002-11-02',12,10,'111114','Sitalasari'),('020XA125','Yesica Lulu Rachelina Purba','XA1','Lumban Julu','2001-12-05',4,2,'111113','Lapangan Bola Bawah'),('020XA118','Sanjaya Gultom','XA1','Pematangsiantar','2001-11-28',5,4,'111116','Sitalasari'),('020XA201','Kana','XA2','Dolok Nauli','2000-08-04',2,1,'111119','Laguboti'),('020XA202','Eliezer','XA2','Medan','2000-07-03',1,1,'111110','Laguboti'),('020XA203','Pratama','XA2','Aceh','2000-02-11',5,2,'111121','Laguboti'),('020XA204','Kio','XA2','Medan','2000-11-20',2,1,'111111','Laguboti'),('020XA205','Dalvin','XA2','Porsea','2000-10-19',3,2,'111115','Laguboti'),('020XA206','Selva','XA2','Sigumpar','2000-09-18',6,3,'111116','Laguboti'),('020XA207','Neva','XA2','Laguboti','2000-08-17',5,2,'111145','Laguboti'),('020XA208','Lusi','XA2','Jakarta','2000-07-16',4,4,'111117','Laguboti'),('020XA209','Juni','XA2','Surabaya','2000-06-15',3,1,'111116','Laguboti'),('020XA210','Joni','XA2','Bekasi','2000-05-14',3,1,'111115','Laguboti'),('020XA211','Iwan','XA2','Sitoluama','2000-04-13',3,1,'111116','Laguboti'),('020XA212','Kindy','XA2','Cikarang','2000-03-12',4,4,'111119','Laguboti'),('020XA213','Unni','XA2','Lumban Datu','2000-02-17',3,4,'111140','Laguboti'),('020XA214','Kana','XA2','Dolok Nauli','2000-12-25',3,4,'111156','Laguboti'),('020XA215','Arlan','XA2','Medan','2000-01-05',3,4,'111140','Laguboti'),('020XA216','Richard','XA2','Laguboti','2000-02-06',3,4,'111117','Laguboti'),('020XA217','Ello','XA2','Medan','2000-04-13',3,4,'111145','Laguboti'),('020XA218','Kio','XA2','Medan','2000-11-20',2,1,'111155','Laguboti'),('020XA219','Dalvin','XA2','Porsea','2000-10-19',3,2,'111156','Laguboti'),('020XA220','Selva','XA2','Sigumpar','2000-09-18',6,3,'111112','Laguboti'),('020XA221','Neva','XA2','Laguboti','2000-08-17',5,2,'111114','Laguboti'),('020XA222','Lusi','XA2','Jakarta','2000-07-16',4,4,'111116','Laguboti'),('020XA223','Juni','XA2','Surabaya','2000-06-15',3,1,'111123','Laguboti'),('020XA224','Joni','XA2','Bekasi','2000-05-14',3,1,'111127','Laguboti'),('020XA225','Juna','XA2','Lumban Julu','2000-03-19',3,4,'111141','Laguboti'),('020XA301','adi','XA3','Surabaya','2000-01-01',3,4,'111118','Laguboti'),('020XA302','lucky','XA3','Bekasi','2000-05-21',3,4,'111119','Laguboti'),('020XA303','donna','XA3','Sitoluama','2000-06-23',3,4,'111134','Laguboti'),('020XA304','Dodi','XA3','Cikarang','2000-05-24',3,4,'111145','Laguboti'),('020XA305','Pratama','XA3','Aceh','2000-12-04',3,4,'111146','Laguboti'),('020XA306','Hinny','XA3','Silimbat','2000-07-06',3,4,'111147','Laguboti'),('020XA307','Yogi','XA3','Laguboti','2000-04-25',3,4,'111160','Laguboti'),('020XA308','Oggy','XA3','Porsea','2000-03-05',3,4,'111159','Laguboti'),('020XA309','Juan','XA3','Siraituruk','2000-06-14',3,4,'111145','Laguboti'),('020XA310','Unni','XA3','Lumban Datu','2000-02-17',3,4,'111140','Laguboti'),('020XA311','Kana','XA3','Dolok Nauli','2000-12-25',3,4,'111156','Laguboti'),('020XA312','Arlan','XA3','Medan','2000-01-05',3,4,'111117','Laguboti'),('020XA313','Richard','XA3','Laguboti','2000-02-06',3,4,'111117','Laguboti'),('020XA314','Ello','XA3','Medan','2000-04-13',3,4,'111145','Laguboti'),('020XA315','Kio','XA3','Medan','2000-11-20',2,1,'111155','Laguboti'),('020XA316','Dalvin','XA3','Porsea','2000-10-19',3,2,'111156','Laguboti'),('020XA317','Selva','XA3','Sigumpar','2000-09-18',6,3,'111112','Laguboti'),('020XA318','Neva','XA3','Laguboti','2000-08-17',5,2,'111114','Laguboti'),('020XA319','Lusi','XA3','Jakarta','2000-07-16',4,4,'111116','Laguboti'),('020XA320','Juni','XA3','Surabaya','2000-06-15',3,1,'111123','Laguboti'),('020XA321','Joni','XA3','Bekasi','2000-05-14',3,1,'111127','Laguboti'),('020XA322','Iwan','XA3','Sitoluama','2000-04-13',3,1,'111146','Laguboti'),('020XA323','Kindy','XA3','Cikarang','2000-03-12',4,4,'111157','Laguboti'),('020XA324','Kollong','XA3','Laguboti','2000-04-25',3,4,'111111','Laguboti'),('020XA325','Juna','XA3','Lumban Julu','2000-03-19',3,4,'111141','Laguboti'),('020XA326','Oki','XA3','Bekasi','2000-05-21',3,4,'111119','Laguboti'),('020XS101','Ponna','XS1','Sitoluama','2000-06-23',3,4,'111134','Laguboti'),('020XS102','Dodi','XS1','Cikarang','2000-05-24',3,4,'111145','Laguboti'),('020XS103','Pratama','XS1','Aceh','2000-12-04',3,4,'111146','Laguboti'),('020XS104','Hinny','XS1','Silimbat','2000-07-06',3,4,'111147','Laguboti'),('020XS105','Yogi','XS1','Laguboti','2000-04-25',3,4,'111160','Laguboti'),('020XS106','Oggy','XS1','Porsea','2000-03-05',3,4,'111159','Laguboti'),('020XS107','Juan','XS1','Siraituruk','2000-06-14',3,4,'111145','Laguboti'),('020XS108','Davinson','XS1','Jakarta','2019-06-30',5,1,'000001','Malang'),('020XS109','Hinny','XS1','Silimbat','2000-07-06',5,3,'111144','Laguboti'),('020XS110','Yogi','XS1','Laguboti','2000-04-25',5,3,'111122','Laguboti'),('020XS111','Oggy','XS1','Porsea','2000-03-05',5,3,'111132','Laguboti'),('020XS112','Juan','XS1','Siraituruk','2000-06-14',4,4,'111123','Laguboti'),('020XS113','Juna','XS1','Lumban Julu','2000-03-19',4,2,'111134','Laguboti'),('020XS114','Unni','XS1','Lumban Datu','2000-02-17',3,3,'111143','Laguboti'),('020XS115','Kana','XS1','Dolok Nauli','2000-12-25',3,1,'111141','Laguboti'),('020XS116','Richard','XS1','Laguboti','2000-02-06',5,2,'111159','Laguboti'),('020XS117','Ello','XS1','Medan','2000-04-13',4,1,'111156','Laguboti'),('020XS118','Pratama','XS1','Aceh','2000-12-04',6,4,'111145','Laguboti'),('020XS119','Ola','XS1','Medan','2000-10-15',5,3,'111110','Laguboti'),('020XS120','Melva','XS1','Sigumpar','2000-12-15',4,3,'111132','Laguboti'),('020XS201','Eva','XS2','Laguboti','2000-10-14',4,1,'111132','Laguboti'),('020XS202','Yusi','XS2','Jakarta','2000-12-16',3,3,'111112','Laguboti'),('020XS203','Yuni','XS2','Surabaya','2000-01-01',4,2,'111117','Laguboti'),('020XS204','Oki','XS2','Bekasi','2000-05-21',5,3,'111115','Laguboti'),('555559','Dodi','XS2','Cikarang','2000-05-24',4,2,'111160','Laguboti');



/*Table structure for table `staf_tata_usaha` */



DROP TABLE IF EXISTS `staf_tata_usaha`;



CREATE TABLE `staf_tata_usaha` (
  `NIK` VARCHAR(765) DEFAULT NULL,
  `Nama` VARCHAR(765) DEFAULT NULL,
  `tempat_lahir` VARCHAR(765) DEFAULT NULL,
  `tanggal_lahir` DATE DEFAULT NULL,
  `username_akun` VARCHAR(765) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;



/*Data for the table `staf_tata_usaha` */



INSERT  INTO `staf_tata_usaha`(`NIK`,`Nama`,`tempat_lahir`,`tanggal_lahir`,`username_akun`) VALUES ('122321','Admin','Laguboti','1992-03-24','Tu');



/*Table structure for table `status_absensi_siswa` */



DROP TABLE IF EXISTS `status_absensi_siswa`;



CREATE TABLE `status_absensi_siswa` (
  `kehadiran` VARCHAR(72) DEFAULT NULL,
  `id_absensi` VARCHAR(72) DEFAULT NULL,
  `NISN` VARCHAR(30) DEFAULT NULL,
  `tanggal` DATE DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;



/*Data for the table `status_absensi_siswa` */



INSERT  INTO `status_absensi_siswa`(`kehadiran`,`id_absensi`,`NISN`,`tanggal`) VALUES ('hadir','A53','555511','2019-06-14'),('sakit','A53','555512','2019-06-14'),('hadir','A53','555513','2019-06-14'),('izin','A53','555514','2019-06-14'),('hadir','A53','555515','2019-06-14'),('hadir','A53','555516','2019-06-14'),('hadir','A53','555517','2019-06-14'),('hadir','A53','555519','2019-06-14'),('hadir','A53','555520','2019-06-14'),('hadir','A53','555550','2019-06-14'),('hadir','A53','555551','2019-06-14'),('hadir','A53','555553','2019-06-14'),('hadir','A53','555554','2019-06-14'),('hadir','A53','555555','2019-06-14'),('sakit','A53','555556','2019-06-14'),('izin','A53','555557','2019-06-14'),('hadir','A53','555558','2019-06-14'),('hadir','A53','555559','2019-06-14'),('hadir','A53','999991','2019-06-14'),('hadir','A53','999992','2019-06-14'),('hadir','A53','999993','2019-06-14'),('hadir','A53','999997','2019-06-14'),('hadir','D71','111220','2021-04-18'),('hadir','D71','111222','2021-04-18'),('hadir','D71','111223','2021-04-18'),('hadir','D71','111224','2021-04-18'),('hadir','D72','111225','2021-04-18'),('hadir','D72','111226','2021-04-18'),('hadir','D72','111227','2021-04-18'),('hadir','D72','111228','2021-04-18');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

