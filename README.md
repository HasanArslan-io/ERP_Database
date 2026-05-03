ERP_Database

SQL Server ile geliştirilmiş ERP tabanlı veritabanı projesidir.

Amaç
Gerçek bir küçük işletme senaryosu baz alınarak ERP mantığıyla tasarlanmış ilişkisel veritabanı projesi. Her tablo için ayrı sorgu dosyaları hazırlanmış olup SQL konuları uygulamalı olarak işlenmiştir.


Tablo Yapısı

Customers — Müşteri kayıtları ve yönetimi
Orders — Sipariş takibi
Products — Ürün kataloğu ve stok
OrderDetails — Sipariş detayları ve ilişkisel yapı

Kullanılan Konular
Temel & Orta Seviye

CREATE TABLE, INSERT, UPDATE, DELETE
SELECT, WHERE, ORDER BY, DISTINCT, BETWEEN
GROUP BY, HAVING
Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)
JOIN (INNER JOIN, LEFT JOIN)
Subquery
CASE WHEN
Tarih ve Metin Fonksiyonları
CAST / CONVERT, COALESCE
PRIMARY KEY, FOREIGN KEY

İleri Seviye (Geliştirme Sürecinde)

CTE (Common Table Expressions)
Window Functions (ROW_NUMBER, RANK)
Stored Procedure
View
Temporary Table (#temp)
Transaction / COMMIT / ROLLBACK
Index (Clustered / Non-Clustered)
Execution Plan okuma
Query Optimization

Durum
Proje aktif geliştirme sürecindedir. İleri seviye konular düzenli olarak eklenmektedir.
