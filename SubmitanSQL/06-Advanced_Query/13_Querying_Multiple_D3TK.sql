
--INNER JOIN
SELECT akun.username,akun.role, guru.Nama
FROM akun
INNER JOIN guru
ON akun.username = guru.username_akun;

SELECT siswa.Nama, siswa.alamat, orangtua.nama_Ayah, orangtua.nama_Ibu
FROM siswa
INNER JOIN orangtua
ON siswa.no_KK = orangtua.no_KK;

--LEFT JOIN
SELECT jadwal.id_jadwal, jadwal.kelas, guru.Nama
FROM guru
LEFT JOIN jadwal
ON jadwal.kode_guru = guru.kode_guru;

SELECT absensi.id_absensi, absensi.kode_guru, jadwal.kelas
FROM absensi
LEFT JOIN jadwal 
ON absensi.id_jadwal = jadwal.id_jadwal;

--RIGHT JOIN
SELECT orangtua.nama_Ayah, orangtua.pekerjaan_Ayah, siswa.Nama, siswa.kelas
FROM orangtua
RIGHT JOIN siswa
ON orangtua.no_KK = siswa.no_KK;

SELECT status_absensi_siswa.kehadiran, status_absensi_siswa.NISN, absensi.kelas, absensi.kode_guru
FROM status_absensi_siswa
RIGHT JOIN absensi
ON absensi.id_absensi = status_absensi_siswa.id_absensi;

--SELF JOIN
SELECT guru.Nama, jadwal.jam_mulai,jadwal.jam_berakhir, jadwal.kelas
FROM guru, jadwal
WHERE guru.kode_guru = jadwal.kode_guru;

SELECT staf_tata_usaha.NIK, staf_tata_usaha.Nama, akun.PASSWORD
FROM staf_tata_usaha, akun
WHERE akun.username = staf_tata_usaha.username_akun;

--UNION
SELECT Nama FROM siswa
UNION
SELECT Nama FROM Guru;

SELECT id_jadwal FROM absensi
UNION
SELECT id_jadwal FROM jadwal;