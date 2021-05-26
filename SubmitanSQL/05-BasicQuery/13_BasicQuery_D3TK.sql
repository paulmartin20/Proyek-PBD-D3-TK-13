/*A*/
SELECT * FROM jadwal;
SELECT * FROM akun;

/* B  */
SELECT * FROM akun WHERE Username= 'ic41801';
SELECT * FROM jadwal WHERE kelas= '7A';
SELECT * FROM orangtua WHERE alamat= 'medan';
SELECT * FROM siswa WHERE tempat_lahir= 'medan';

/* C */
SELECT * FROM akun
ORDER BY Username DESC;
SELECT * FROM jadwal
ORDER BY kode_guru DESC;
SELECT * FROM kelas
ORDER BY jumlah_siswa ASC;
SELECT * FROM siswa
ORDER BY tanggal_lahir ASC;

/*D*/
SELECT * FROM siswa WHERE nama LIKE '%r';
SELECT * FROM orangtua WHERE alamat LIKE '_i%';
SELECT * FROM kelas WHERE nama_ketua LIKE 'e%';
SELECT * FROM status_absensi_siswa WHERE kehadiran LIKE '%t';

/*E*/
SELECT * FROM siswa
WHERE nama='Feny P Siregar' AND alamat='Jalan Jawa';

SELECT * FROM jadwal
WHERE id_jadwal='AJM5' OR kode_guru='WLS';

SELECT * FROM orangtua 
WHERE NOT nama_ayah='shawn';

SELECT * FROM siswa
WHERE jlh_saudara >= 3;

