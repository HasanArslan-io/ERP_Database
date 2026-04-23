-- =============================================
-- TABLO: OrderDetails (Sipariş Detayları)
-- AÇIKLAMA: Sipariş detayları üzerinden analiz sorguları
-- =============================================

-- SORU 1:
-- Siparişleri ürün isimleriyle birlikte getir

SELECT 
    od.OrderID,
    p.ProductName,
    od.Quantity
FROM OrderDetails od
INNER JOIN Products p 
    ON od.ProductID = p.ProductID;


-- SORU 2:
-- Siparişleri ürün isimleri, fiyat ve toplam tutarla birlikte getir

SELECT 
    od.OrderID,
    p.ProductName,
    od.Quantity,
    od.UnitPrice,
    od.TotalAmount
FROM OrderDetails od
INNER JOIN Products p 
    ON od.ProductID = p.ProductID;


-- SORU 3:
-- Sipariş tarihini de ekle

SELECT 
    od.OrderID,
    o.OrderDate,
    p.ProductName,
    od.Quantity
FROM OrderDetails od
INNER JOIN Products p 
    ON od.ProductID = p.ProductID
INNER JOIN Orders o
    ON od.OrderID = o.OrderID;


-- SORU 4:
-- Her siparişte toplam kaç adet ürün var?

SELECT
    OrderID,
    SUM(Quantity) AS ToplamAdet
FROM OrderDetails
GROUP BY OrderID;


-- SORU 5:
-- Her siparişin toplam tutarını getir

SELECT
    OrderID,
    SUM(TotalAmount) AS ToplamTutar
FROM OrderDetails
GROUP BY OrderID;


-- SORU 6:
-- Her siparişte kaç farklı ürün var?

SELECT
    OrderID,
    COUNT(DISTINCT ProductID) AS UrunCesidi
FROM OrderDetails
GROUP BY OrderID;


-- SORU 7:
-- Toplam tutarı 5000’den büyük olan siparişler

SELECT
    OrderID,
    SUM(TotalAmount) AS ToplamTutar
FROM OrderDetails
GROUP BY OrderID
HAVING SUM(TotalAmount) > 5000;


-- SORU 8:
-- En çok ürün (adet) satılan sipariş

SELECT TOP 1
    OrderID,
    SUM(Quantity) AS ToplamAdet
FROM OrderDetails
GROUP BY OrderID
ORDER BY SUM(Quantity) DESC;


-- SORU 9:
-- En çok ciro yapan sipariş

SELECT TOP 1
    OrderID,
    SUM(TotalAmount) AS ToplamTutar
FROM OrderDetails
GROUP BY OrderID
ORDER BY SUM(TotalAmount) DESC;