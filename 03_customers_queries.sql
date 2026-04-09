-- =============================================
-- DOSYA: customers_queries.sql
-- AÇIKLAMA: Customers tablosu üzerinde temel ve iş dünyasına uygun sorgular
-- KONULAR: SELECT, WHERE, LIKE, IN, BETWEEN, ORDER BY, COUNT, GROUP BY, HAVING, UPDATE, DELETE
-- =============================================


-- ========================
-- 1. Temel Veri Listeleme
-- ========================

-- Tüm müşterileri getir
SELECT * FROM Customers;

-- Belirli sütunları getir
SELECT CustomerName, City, Phone
FROM Customers;


-- ========================
-- 2. İş Senaryolu Filtreleme
-- ========================

-- Aktif müşterileri müşteri adına göre sırala
SELECT CustomerName, City, Phone
FROM Customers
WHERE IsActive = 1
ORDER BY CustomerName ASC;

-- Gaziantep ve İstanbul'daki aktif müşterileri getir
SELECT CustomerName, City, CustomerType
FROM Customers
WHERE IsActive = 1
AND City IN ('Gaziantep', 'İstanbul');

-- Türkiye'deki corporate müşterileri Z'den A'ya sırala
SELECT CustomerName, City, TaxNumber
FROM Customers
WHERE CustomerType = 'Corporate'
AND Country = 'Turkey'
ORDER BY CustomerName DESC;

-- Telefonu 053 ile başlayan aktif müşteriler
SELECT CustomerName, Phone, City
FROM Customers
WHERE Phone LIKE '053%'
AND IsActive = 1;

-- 2000 ve sonrası bireysel müşteriler
SELECT CustomerName, CreatedAt, City
FROM Customers
WHERE CreatedAt >= '2000-01-01'
AND CustomerType = 'Individual';

-- CustomerID'si 3 ile 10 arasındaki müşteriler
SELECT CustomerName, City, CustomerID
FROM Customers
WHERE CustomerID BETWEEN 3 AND 10;

-- TaxNumber değeri boş olan müşteriler
SELECT CustomerName, TaxNumber, City
FROM Customers
WHERE TaxNumber IS NULL;


-- ========================
-- 3. Sayısal Analizler
-- ========================

-- Aktif müşteri sayısı
SELECT COUNT(*) AS ActiveCustomerCount
FROM Customers
WHERE IsActive = 1;

-- Şehirlere göre müşteri sayısı
SELECT City, COUNT(*) AS CustomerCount
FROM Customers
GROUP BY City;

-- Şehirlere göre aktif müşteri sayısı
SELECT City, COUNT(*) AS ActiveCustomerCount
FROM Customers
WHERE IsActive = 1
GROUP BY City;

-- 2'den fazla müşterisi olan şehirler
SELECT City, COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY City
HAVING COUNT(*) > 2;


-- ========================
-- 4. Veri Güncelleme İşlemleri
-- ========================

-- CustomerID 1 olan müşterinin şehrini güncelle
-- dikkat: veri değiştirir
UPDATE Customers
SET City = 'Ankara'
WHERE CustomerID = 1;

-- CustomerID 5 olan müşteriyi sil (test amaçlı)
-- dikkat: veri değiştirir
DELETE FROM Customers
WHERE CustomerID = 5;


-- ========================
-- 5. Son Kayıtlar
-- ========================

-- En son eklenen 3 müşteri
SELECT TOP 3 CustomerName, CreatedAt, City
FROM Customers
ORDER BY CreatedAt DESC;
