-- =============================================
-- TABLO: Products (Ürünler)
-- AÇIKLAMA: Ürünler üzerinde temel ve analiz sorguları
-- =============================================

-- SORU 1:
-- Electronics kategorisindeki ürünleri listele

SELECT 
    ProductName AS UrunAdi,
    Price AS Fiyat
FROM Products 
WHERE Category = 'Electronics';


-- SORU 2:
-- Fiyatı 1000’den büyük olan ürünleri listele

SELECT 
    ProductName AS UrunAdi,
    Price AS UrunFiyati
FROM Products 
WHERE Price > 1000;


-- SORU 3:
-- Furniture kategorisindeki ürünleri fiyata göre büyükten küçüğe sırala

SELECT 
    ProductName AS UrunAdi,
    Price AS UrunFiyati
FROM Products
WHERE Category = 'Furniture'
ORDER BY Price DESC;


-- SORU 4:
-- En pahalı 3 ürünü getir

SELECT TOP 3
    ProductName AS UrunAdi,
    Price AS UrunFiyati
FROM Products
ORDER BY Price DESC;


-- SORU 5:
-- Her kategoride kaç ürün var?

SELECT 
    Category,
    COUNT(*) AS UrunSayisi
FROM Products 
GROUP BY Category;


-- SORU 6:
-- Ortalama ürün fiyatını getir

SELECT 
    AVG(Price) AS OrtalamaFiyat
FROM Products;


-- SORU 7:
-- En ucuz ürünün fiyatını getir

SELECT
    MIN(Price) AS EnDusukFiyat
FROM Products;


-- SORU 8:
-- En pahalı ürünün fiyatını getir

SELECT
    MAX(Price) AS EnYuksekFiyat
FROM Products;


-- SORU 9:
-- Fiyatı 100 ile 5000 arasında olan ürünleri getir

SELECT
    ProductName AS UrunAdi,
    Price AS UrunFiyati
FROM Products 
WHERE Price BETWEEN 100 AND 5000;


-- SORU 10:
-- Electronics kategorisindeki ürünlerin ortalama fiyatını getir

SELECT
    AVG(Price) AS OrtalamaFiyat
FROM Products 
WHERE Category = 'Electronics';