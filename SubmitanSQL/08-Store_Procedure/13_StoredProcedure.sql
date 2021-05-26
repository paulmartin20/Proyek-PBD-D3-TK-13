CREATE PROCEDURE Namasiswa2a
AS
SELECT * FROM siswa
WHERE Nama LIKE '_a%'
ORDER BY Nama ASC

exec Namasiswa2a