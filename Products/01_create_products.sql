-- =============================================
-- TABLO: Products (Ürünler)
-- AÇIKLAMA: Satılan ürünlerin bilgilerini tutan tablo
-- =============================================

-- SÜTUNLAR:
-- ProductID    → Sistem ID (Otomatik)
-- ProductName  → Ürün Adı
-- Category     → Ürün Kategorisi
-- Price        → Ürün Fiyatı
-- CreatedAt    → Kayıt Tarihi

-- TABLO OLUŞTURMA

CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    Category VARCHAR(30) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    CreatedAt DATE NOT NULL
)