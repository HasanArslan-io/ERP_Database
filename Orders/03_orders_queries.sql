-- =============================================
-- DOSYA: orders_queries.sql
-- AÇIKLAMA: Orders tablosu üzerinde temel ve iş dünyasına uygun sorgular
-- KONULAR: SELECT, WHERE, ORDER BY, AND/OR, BETWEEN, TOP, DATEDIFF, COUNT, SUM, AVG, MIN, MAX, GROUP BY, HAVING
-- =============================================


-- ========================
-- 1. Temel Veri Listeleme
-- ========================

-- Tüm siparişleri getir
SELECT * FROM Orders;

-- Belirli sütunları getir
SELECT OrderCode, OrderDate, TotalAmount
FROM Orders;


-- ========================
-- 2. İş Senaryolu Filtreleme
-- ========================

-- Aktif ve Pending siparişleri toplam tutara göre büyükten küçüğe sırala
SELECT OrderCode, CustomerID, TotalAmount
FROM Orders
WHERE IsActive = 1 AND Status = 'Pending'
ORDER BY TotalAmount DESC;

-- Teslim süresi 30 günden uzun olan siparişleri getir
SELECT 
    OrderCode,
    OrderDate,
    DeliveryDate,
    DATEDIFF(day, OrderDate, DeliveryDate) AS TeslimSuresi
FROM Orders
WHERE DATEDIFF(day, OrderDate, DeliveryDate) > 30
ORDER BY TeslimSuresi DESC;

-- Toplam tutarı 50.000’den büyük Completed siparişleri küçükten büyüğe sırala
SELECT OrderCode, CustomerID, TotalAmount
FROM Orders
WHERE Status = 'Completed' AND TotalAmount > 50000
ORDER BY TotalAmount ASC;

-- 2025 yılına ait aktif siparişleri en yeniden eskiye sırala
SELECT OrderCode, OrderDate, TotalAmount
FROM Orders
WHERE IsActive = 1 AND OrderDate BETWEEN '2025-01-01' AND '2025-12-31'
ORDER BY OrderDate DESC;

-- Teslim süresi 20-50 gün arasında olan siparişleri getir
SELECT 
    OrderCode,
    DATEDIFF(day, OrderDate, DeliveryDate) AS TeslimSuresi
FROM Orders
WHERE DATEDIFF(day, OrderDate, DeliveryDate) BETWEEN 20 AND 50
ORDER BY TeslimSuresi DESC;


-- ========================
-- 3. Sayısal Analizler
-- ========================

-- Her müşteri için toplam sipariş tutarı (50.000 üzeri)
SELECT 
    CustomerID,
    SUM(TotalAmount) AS ToplamTutar
FROM Orders
WHERE IsActive = 1
GROUP BY CustomerID
HAVING SUM(TotalAmount) > 50000
ORDER BY ToplamTutar DESC;

-- En yüksek tutarlı 3 Completed sipariş
SELECT TOP 3 OrderCode, CustomerID, TotalAmount
FROM Orders
WHERE Status = 'Completed'
ORDER BY TotalAmount DESC;

-- Ortalama teslim süresi
SELECT 
    AVG(DATEDIFF(day, OrderDate, DeliveryDate)) AS OrtalamaTeslimSuresi
FROM Orders;

-- Status’a göre sipariş sayısı
SELECT Status, COUNT(*) AS SiparisSayisi
FROM Orders
GROUP BY Status
ORDER BY SiparisSayisi DESC;

-- 2020 sonrası siparişlerin toplam tutarı
SELECT SUM(TotalAmount) AS ToplamTutar
FROM Orders
WHERE OrderDate > '2019-12-31';

-- Cancelled siparişlerin ortalama tutarı
SELECT AVG(TotalAmount) AS OrtalamaTutar
FROM Orders
WHERE Status = 'Cancelled';

-- 2’den fazla siparişi olan müşteriler
SELECT CustomerID, COUNT(*) AS SiparisSayisi
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) > 2
ORDER BY SiparisSayisi DESC;