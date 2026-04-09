-- =============================================
-- TABLO: Customers (Müşteriler)
-- AÇIKLAMA: Müşteri bilgilerini tutan ana tablo
-- =============================================

-- SÜTUNLAR:
-- CustomerID    → Sistem ID (Otomatik)
-- CustomerCode  → Müşteri Kodu
-- CustomerName  → Müşteri Adı
-- TaxNumber     → Vergi No
-- TaxOffice     → Vergi Dairesi
-- Phone         → Telefon
-- Email         → E-posta
-- City          → Şehir
-- CustomerType  → Müşteri Tipi
-- CreatedAt     → Kayıt Tarihi
-- IsActive      → Aktif Mi
-- Country       → Ülke

-- TABLO OLUŞTURMA
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
	CustomerID   INT IDENTITY(1,1) PRIMARY KEY,
	CustomerCode VARCHAR(15) UNIQUE NOT NULL,
	CustomerName VARCHAR(30) NOT NULL,
	TaxNumber    CHAR(10) NOT NULL,
	TaxOffice    VARCHAR(20) NOT NULL,
	Phone        CHAR(15) NOT NULL,
	Email        VARCHAR(100) NOT NULL,
	City         VARCHAR(15) NOT NULL,
	CustomerType VARCHAR(20) NOT NULL CHECK (CustomerType IN ('Individual', 'Corporate')),
	CreatedAt    DATE NOT NULL,
	IsActive     BIT NOT NULL,
	Country      VARCHAR(30) DEFAULT 'Turkey'
)
