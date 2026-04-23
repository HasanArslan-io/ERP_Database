-- =============================================
-- TABLO: OrderDetails (Sipariş Detayları)
-- AÇIKLAMA: Sipariş içerisindeki ürünleri tutan detay tablosu
-- =============================================

-- SÜTUNLAR:
-- OrderDetailID → Sistem ID (Otomatik)
-- OrderID       → Sipariş ID (Foreign Key)
-- ProductID     → Ürün ID (Foreign Key)
-- Quantity      → Ürün Adedi
-- UnitPrice     → Birim Fiyat (Sipariş anı)
-- TotalAmount   → Toplam Tutar

-- TABLO OLUŞTURMA

CREATE TABLE OrderDetails (
    OrderDetailID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    TotalAmount DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
)