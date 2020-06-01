--9.1. Cho biết những môn được tất cả các sinh viên theo học. (những môn học mà không
-- có sinh viên nào không không học)
GO
SELECT *
FROM DMMH K1	
WHERE NOT EXISTS (SELECT * FROM DMSV S
 WHERE NOT EXISTS (SELECT *
 FROM KETQUA K2
 WHERE K2.MaSV = S.MaSV
 AND K2.MaMH = K1.MaMH))
 --select * from KETQUA where MaMH = '01'
 --insert into KETQUA values('A04','01','1','10.00')
  --insert into KETQUA values('B02','01','1','10.00')
 --select * from DMSV
GO
--9.2. Cho biết những sinh viên học những môn giống sinh viên có mã số A02 học. 
    SELECT DISTINCT MaSV, MaMH
    From KETQUA a
    WHERE Exists(SELECT DISTINCT MaMH
    From KETQUA
    WHERE MaSV='A02'and MaMH=a.MaMH
    )

GO
-- 9.3. Cho biết những sinh viên học những môn bằng đúng những môn mà sinh viên A02 học. 
    SELECT TenSV
    FROM KETQUA a,DMSV b,
        (Select MaSV,MaMH,count(distinct MaMH) SoMon
    FROM KETQUA
    WHERE MaSV='A02'
    Group By MaSV,MaMH) c
    WHERE a.MaSV=b.MaSV and a.MaMH=c.MaMH and a.MaSV <> c.MaSV
    Group By TenSV
    HAVING COUNT(DISTINCT a.MaMH)=(SELECT COUNT (DISTINCT MaMH)
    From KETQUA
    WHERE MaSV='A02')
GO
-- 10.2 Với mỗi khoa cho biết có bao nhiêu sinh viên
    SELECT a.TenKhoa as N'Tên Khoa', COUNT(DISTINCT MASV) as SoSV
    FROM DMKHOA a LEFT JOIN DMSV b ON a.MaKhoa = b.MaKH
    GROUP BY a.MaKhoa, a.TenKhoa
-- 10.3. Với mỗi sinh viên cho biết đã học bao nhiêu môn. 
    SELECT a.TenSV as N'Tên sinh viên:', COUNT(DISTINCT MaMH) as Somon  
    FROM DMSV a LEFT JOIN KETQUA b ON a.MaSV = b.MaSV 
    GROUP BY a.MaSV, a.TenSV
GO