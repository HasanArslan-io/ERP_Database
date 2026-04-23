-- =============================================
-- TABLO: Products (Ürünler)
-- AÇIKLAMA: Ürün tablosuna örnek veri ekleme işlemleri
-- =============================================

-- EKLENEN VERİ:
-- ProductName  → Ürün Adı
-- Category     → Ürün Kategorisi
-- Price        → Ürün Fiyatı
-- CreatedAt    → Kayıt Tarihi

-- VERİ EKLEME

INSERT INTO Products (ProductName, Category, Price, CreatedAt) VALUES
('Laptop',         'Electronics', 25000.00, '2024-01-10'),
('Mouse',          'Electronics',   150.00, '2024-01-12'),
('Keyboard',       'Electronics',   300.00, '2024-01-12'),
('Office Chair',   'Furniture',    4500.00, '2024-02-01'),
('Desk',           'Furniture',    7000.00, '2024-02-03'),
('Notebook',       'Stationery',     50.00, '2024-02-10'),
('Pen',            'Stationery',     10.00, '2024-02-10'),
('Monitor',        'Electronics',  6000.00, '2024-03-05'),
('Printer',        'Electronics',  3500.00, '2024-03-07'),
('Coffee Machine', 'Appliances',   5000.00, '2024-03-15')