CREATE OR ALTER PROCEDURE CheckTrungLap
    @TrungLap BIT OUTPUT,
    @NgayChieu date,
    @GioBatDau datetime,
    @PhongChieu VARCHAR(10),
    @ThoiLuongPhim INT
AS
BEGIN
    DECLARE @GioKetThuc DATETIME;
    SET @GioKetThuc = DATEADD(MINUTE, @ThoiLuongPhim, @GioBatDau);


    DECLARE @CaChieu DATETIME;
	DECLARE @GioKetThuc_CaChieu DATETIME;

    SELECT @CaChieu = CaChieu,
           @GioKetThuc_CaChieu = DATEADD(MINUTE, @ThoiLuongPhim, CONVERT(DATETIME, CaChieu, 108))
    FROM tbXuatChieu
    WHERE MaPhong = @PhongChieu AND NgayChieu = @NgayChieu;

    IF NOT EXISTS (
        SELECT 1
        FROM tbXuatChieu
        WHERE NgayChieu = @NgayChieu
            AND (@GioBatDau BETWEEN @CaChieu AND @GioKetThuc_CaChieu
			OR @GioKetThuc BETWEEN @CaChieu AND @GioKetThuc_CaChieu)
            AND MaPhong = @PhongChieu
    )
    BEGIN	
        SET @TrungLap = 0;
    END 
    ELSE
    BEGIN
        SET @TrungLap = 1;
    END
END

DECLARE @OutputTrungLap BIT;
EXEC CheckTrungLap @OutputTrungLap OUTPUT, '2023-11-06', '3:02', 'R002', '148';
PRINT CAST(@OutputTrungLap AS varchar(1));


--Test 5
CREATE OR ALTER PROCEDURE CheckTrungLap
    
    @NgayChieu DATE,
    @GioBatDau DATETIME,
    @PhongChieu VARCHAR(10),
    @ThoiLuongPhim INT
AS
BEGIN
   DECLARE @TrungLap BIT;
    DECLARE @GioKetThuc DATETIME;
    SET @GioKetThuc = DATEADD(MINUTE, @ThoiLuongPhim, @GioBatDau);


    DECLARE @CaChieu DATETIME;
	DECLARE @GioKetThuc_CaChieu DATETIME;

    SELECT @CaChieu = CaChieu,
           @GioKetThuc_CaChieu = DATEADD(MINUTE, @ThoiLuongPhim, CONVERT(DATETIME, CaChieu, 108))
    FROM tbXuatChieu
    WHERE MaPhong = @PhongChieu AND NgayChieu = @NgayChieu;

    -- In giá trị để kiểm tra
    PRINT 'GioBatDau: ' + CONVERT(VARCHAR, @GioBatDau);
    PRINT 'ThoiLuongPhim: ' + CONVERT(VARCHAR, @ThoiLuongPhim);
    PRINT 'NgayChieu: ' + CONVERT(VARCHAR, @NgayChieu);
    PRINT 'GioKetThuc: ' + CONVERT(VARCHAR, @GioKetThuc);
    PRINT 'CaChieu: ' + CONVERT(VARCHAR, @CaChieu);
    PRINT 'GioKetThuc_CaChieu: ' + CONVERT(VARCHAR, @GioKetThuc_CaChieu);

    -- Kiểm tra trùng lặp
    IF NOT EXISTS (
        SELECT 1
        FROM tbXuatChieu
        WHERE NgayChieu = @NgayChieu
            AND (@GioBatDau BETWEEN @CaChieu AND @GioKetThuc_CaChieu
			OR @GioKetThuc BETWEEN @CaChieu AND @GioKetThuc_CaChieu)
            AND MaPhong = @PhongChieu
    )
    BEGIN
        SET @TrungLap = 0;
    END 
    ELSE
    BEGIN
        SET @TrungLap = 1;
    END

    -- In giá trị của @TrungLap để kiểm tra
    PRINT 'TrungLap: ' + CONVERT(VARCHAR, @TrungLap);
END
	EXEC CheckTrungLap '2023-11-12', '2:10', 'R002', '148';