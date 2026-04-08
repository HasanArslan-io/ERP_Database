

-- =============================================
-- TABLO: Customers (Müşteriler)
-- AÇIKLAMA: Örnek müşteri verileri
-- KAYIT SAYISI: 15
-- =============================================

INSERT INTO Customers 
(CustomerCode, CustomerName, TaxNumber, TaxOffice, Phone,
Email, City, CustomerType, CreatedAt, IsActive, Country)
VALUES 
	   ('A1', 'AkifUzun','2938402284', 'Kadıköy', '05345902142', 'akifuzun@gmail.com', 'Adana','Individual','1992-04-02', 1, 'Turkey'),
	   ('A2', 'AhmetGülmez', '8394053245', 'Yüreğir', '05478924376', 'Ahmetgülmez@gmail.com', 'Ağrı', 'Corporate', '2003-03-03', 0, 'Turkey'),
	   ('A3', 'SudeBahçeci', '3894325900', 'Kadıköy', '02164782839', 'Sudebahçeci@gmail.com', 'İzmir', 'Individual', '2009-04-11', 1, 'Turkey'),
	   ('A4', 'JohnnyMiller', '9383939000', 'California', '2129875930', 'Johnnymiller@cloud.com','Texas', 'Individual', '2023-04-03', 1, 'ABD'),
	   ('A5', 'HasanDede', '8373838372', 'Etimesgut', '05347892721', 'Hasandede@gmail.com', 'Ankara', 'Corporate', '1997-01-01', 1, 'Turkey'),
	   ('A6', 'JuliaMulder','2938902855', 'Drenthe', '01131612345678', 'Juliamulder@outlook.com', 'Gelderland', 'Corporate', '2000-03-04', 0, 'Hollanda'),
	   ('A7','EsraTaşkesen', '8374832855', 'Karşıyaka', '05437895412', 'Esrataşkesen@icloud.com','İzmir', 'Corporate', '1997-01-01', 1,'Turkey'),
	   ('A8', 'NeclaUfacık', '8374218923', 'Kadıköy', '05478919284', 'Neclaufacık@hotmail.com', 'Gaziantep', 'Individual', '1992-02-01', 0, 'Turkey'),
	   ('A9', 'ArmağanYiğitoğlu', '3452457235', 'Etimesgut', '05349870209', 'Armaganyigitoglu@gmail.com', 'Gaziantep','Corporate', '1997-03-05', 0, 'Turkey'),
	   ('A10', 'DonaldTrump', '1111111111', 'NewYork','2123340001', 'Donaldtrump@gmail.com', 'NewYork','Corporate', '1998-02-02', 0, 'ABD'),
	   ('A11', 'AhmetKülhan', '4908953245', 'Bahçeler', '03126784216', 'Ahmetkulhan@gmail.com', 'İstanbul','Individual', '1992-04-10', 1, 'Turkey'),
	   ('A12', 'SadıkGürler', '4342789023', 'Elbistan', '05325468946', 'Sadıkgürler@hotmail.com', 'Kahramanmaraş','Individual', '2000-06-09', 1, 'Turkey'),
	   ('A13', 'NeclaKorkmazlar', '4532574455', 'Ceylanpınar', '05386727282', 'Neclakorkmazlar@gmail.com', 'Adana','Individual', '2023-01-05', 1, 'Turkey'),
	   ('A14', 'HüseyinElAyni', '4568963770', 'Dörtyol', '05428974282', 'Huseynelayn@gmail.com', 'Hatay','Corporate', '2016-08-09', 1, 'Suriye'),
	   ('A15', 'HasanKovan', '9863829172', 'Şahinbey', '05327892727', 'Hasankovan@gmail.com', 'Gaziantep','Individual', '2000-02-08', 1, 'Turkey')