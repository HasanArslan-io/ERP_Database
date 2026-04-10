
-- =============================================
-- TABLO: Orders (Siparişler)
-- AÇIKLAMA: Sipariş bilgilerini tutan ana tablo
-- =============================================

-- SÜTUNLAR:
-- OrderID       → Sistem ID (Otomatik)
-- CustomerID    → Müşteri ID (Foreign Key)
-- OrderCode     → Sipariş Kodu
-- OrderDate     → Sipariş Tarihi
-- DeliveryDate  → Teslim Tarihi
-- TotalAmount   → Toplam Tutar
-- Status        → Sipariş Durumu
-- CreatedAt     → Kayıt Tarihi
-- IsActive      → Aktif Mi

-- TABLO OLUŞTURMA

CREATE TABLE Orders (
	OrderID INT IDENTITY(1,1) PRIMARY KEY,
	CustomerID INT NOT NULL REFERENCES Customers(CustomerID),
	OrderCode VARCHAR(30) UNIQUE NOT NULL,
	OrderDate DATE NOT NULL,
	DeliveryDate DATE NOT NULL,
	TotalAmount DECIMAL(10,2) NOT NULL,
	Status VARCHAR(20) NOT NULL CHECK (Status IN ( 'Pending', 'Completed', 'Cancelled')),
	CreatedAt DATE NOT NULL,
	IsActive BIT NOT NULL
	);
