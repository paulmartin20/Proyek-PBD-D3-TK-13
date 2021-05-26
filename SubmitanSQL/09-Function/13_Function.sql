CREATE FUNCTION dbo.sman1_pematangsiantar ()
	RETURNS TABLE
AS
	RETURN (
		SELECT jumlah_siswa,walikelas
		FROM dbo.kelas
		)
GO

SELECT * FROM dbo.sman1_pematangsiantar ();