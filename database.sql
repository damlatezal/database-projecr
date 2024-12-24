CREATE database HotelReservation;
use HotelReservation;
CREATE TABLE Guests (
    GuestID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address TEXT,
    DateOfBirth DATE
);
CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY AUTO_INCREMENT,
    RoomNumber VARCHAR(10) NOT NULL,
    RoomType VARCHAR(50) NOT NULL,
    PricePerNight DECIMAL(10, 2) NOT NULL,
    Status VARCHAR(50) NOT NULL
);
CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    GuestID INT NOT NULL,
    RoomID INT NOT NULL,
    RoomType VARCHAR(50) NOT NULL, 
    CheckInDate DATE NOT NULL,
    CheckOutDate DATE NOT NULL,
    TotalPrice DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (GuestID) REFERENCES Guests(GuestID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    BookingID INT NOT NULL,
    PaymentDate DATE NOT NULL,
    AmountPaid DECIMAL(10, 2) NOT NULL,
    PaymentMethod VARCHAR(50) NOT NULL,
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);
CREATE TABLE Services (
    ServiceID INT PRIMARY KEY AUTO_INCREMENT,
    ServiceName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100) NOT NULL,
    Position VARCHAR(50) NOT NULL,
    HireDate DATE NOT NULL,
    Phone VARCHAR(15)
);
CREATE TABLE ServiceUsage (
    ServiceUsageID INT PRIMARY KEY AUTO_INCREMENT,
    BookingID INT NOT NULL,
    ServiceID INT NOT NULL,
    EmployeeID INT NOT NULL,
    UsageDate DATE NOT NULL,
    Quantity INT NOT NULL,
    TotalCost DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
INSERT INTO Guests (FullName, Email, Phone, Address, DateOfBirth) VALUES
('Ali Yılmaz', 'ali.yilmaz@example.com', '5551234567', 'Istanbul, Turkey', '1995-05-21'),
('Ayşe Demir', 'ayse.demir@example.com', '5552345678', 'Ankara, Turkey', '1990-08-14'),
('Mehmet Kaya', 'mehmet.kaya@example.com', '5553456789', 'Izmir, Turkey', '1987-03-10'),
('Fatma Çelik', 'fatma.celik@example.com', '5554567890', 'Antalya, Turkey', '1992-11-30'),
('Ahmet Şahin', 'ahmet.sahin@example.com', '5555678901', 'Bursa, Turkey', '1985-07-22'),
('Elif Yıldız', 'elif.yildiz@example.com', '5556789012', 'Konya, Turkey', '1998-02-15'),
('Mustafa Özcan', 'mustafa.ozcan@example.com', '5557890123', 'Adana, Turkey', '1993-09-25'),
('Zeynep Aydın', 'zeynep.aydin@example.com', '5558901234', 'Trabzon, Turkey', '1991-06-18'),
('Emre Kılıç', 'emre.kilic@example.com', '5559012345', 'Samsun, Turkey', '1989-12-05'),
('Hülya Arslan', 'hulya.arslan@example.com', '5550123456', 'Mersin, Turkey', '1994-04-28'),
('Cemal Güneş', 'cemal.gunes@example.com', '5551231234', 'Eskisehir, Turkey', '1986-10-12'),
('Selin Tekin', 'selin.tekin@example.com', '5552342345', 'Denizli, Turkey', '1997-01-17'),
('Burak Karaca', 'burak.karaca@example.com', '5553453456', 'Malatya, Turkey', '1990-03-23'),
('Gamze Aksoy', 'gamze.aksoy@example.com', '5554564567', 'Sakarya, Turkey', '1988-07-15'),
('Can Yıldırım', 'can.yildirim@example.com', '5555675678', 'Hatay, Turkey', '1995-09-02'),
('Nazlı Demirtaş', 'nazli.demirtas@example.com', '5556786789', 'Manisa, Turkey', '1999-12-20'),
('Okan Erdem', 'okan.erdem@example.com', '5557897890', 'Gaziantep, Turkey', '1992-05-11'),
('Sevgi Öztürk', 'sevgi.ozturk@example.com', '5558908901', 'Kocaeli, Turkey', '1996-11-04'),
('Umut Yılmaz', 'umut.yilmaz@example.com', '5559019012', 'Ordu, Turkey', '1991-08-07'),
('Merve Taş', 'merve.tas@example.com', '5550120123', 'Çorum, Turkey', '1993-01-29'),
('Eren Kurt', 'eren.kurt@example.com', '5551236789', 'Balikesir, Turkey', '1987-02-13'),
('Nazan Çetinkaya', 'nazan.cetinkaya@example.com', '5552347890', 'Aydın, Turkey', '1990-04-14'),
('Kadir Akbulut', 'kadir.akbulut@example.com', '5553458901', 'Kayseri, Turkey', '1994-06-03'),
('Furkan Koç', 'furkan.koc@example.com', '5554569012', 'Van, Turkey', '1998-09-19'),
('Ayça Dinç', 'ayca.dinc@example.com', '5555670123', 'Rize, Turkey', '1997-03-08');
INSERT INTO Rooms (RoomNumber, RoomType, PricePerNight, Status) VALUES
('101', 'Single', 2000.00, 'Available'),
('102', 'Double', 3000.00, 'Available'),
('103', 'Suite', 5000.00, 'Occupied'),
('104', 'Single', 2000.00, 'Available'),
('105', 'Double', 3000.00, 'Occupied'),
('106', 'Suite', 5000.00, 'Available'),
('107', 'Single', 2000.00, 'Available'),
('108', 'Double', 3000.00, 'Occupied'),
('109', 'Suite', 5000.00, 'Available'),
('110', 'Single', 2000.00, 'Available'),
('111', 'Double', 3000.00, 'Occupied'),
('112', 'Suite', 5000.00, 'Available'),
('113', 'Single', 2000.00, 'Occupied'),
('114', 'Double', 3000.00, 'Available'),
('115', 'Suite', 5000.00, 'Available'),
('116', 'Single', 2000.00, 'Available'),
('117', 'Double', 3000.00, 'Occupied'),
('118', 'Suite', 5000.00, 'Available'),
('119', 'Single', 2000.00, 'Occupied'),
('120', 'Double', 3000.00, 'Available'),
('121', 'Suite', 5000.00, 'Available'),
('122', 'Single', 2000.00, 'Available'),
('123', 'Double', 3000.00, 'Available'),
('124', 'Suite', 5000.00, 'Occupied'),
('125', 'Single', 2000.00, 'Available');

INSERT INTO Bookings (GuestID, RoomID, RoomType, CheckInDate, CheckOutDate, TotalPrice) VALUES
(1, 1, 'Single', '2024-01-01', '2024-01-03', 4000.00),
(2, 2,'Double', '2024-01-02', '2024-01-05', 9000.00),
(3, 3,'Suite', '2024-01-04', '2024-01-06', 10000.00),
(4, 4,'Single', '2024-01-05', '2024-01-08', 6000.00),
(5, 5,'Double', '2024-01-06', '2024-01-09', 9000.00),
(6, 6, 'Suite','2024-01-07', '2024-01-10', 15000.00),
(7, 7,'Single', '2024-01-08', '2024-01-11', 6000.00),
(8, 8,'Double', '2024-01-09', '2024-01-15', 18000.00),
(9, 9,'Suite', '2024-01-10', '2024-01-18', 40000.00),
(10, 10,'Single', '2024-01-11', '2024-01-14', 6000.00),
(11, 11,'Double', '2024-01-12', '2024-01-15', 9000.00),
(12, 12,'Suite', '2024-01-13', '2024-01-16', 15000.00),
(13, 13,'Single', '2024-01-14', '2024-01-19', 10000.00),
(14, 14,'Double', '2024-01-15', '2024-01-20', 15000.00),
(15, 15,'Suite', '2024-01-16', '2024-01-23', 35000.00),
(1, 16,'Single', '2024-01-17', '2024-01-20', 6000.00),
(2, 17,'Double', '2024-01-18', '2024-01-21', 9000.00),
(3, 18,'Suite', '2024-01-19', '2024-01-22', 15000.00),
(4, 19,'Single', '2024-01-20', '2024-01-23', 6000.00),
(5, 20,'Double', '2024-01-21', '2024-01-24', 9000.00),
(6, 21,'Suite', '2024-01-22', '2024-01-25', 15000.00),
(7, 22,'Single', '2024-01-23', '2024-01-26', 6000.00),
(8, 23, 'Double','2024-01-24', '2024-01-28', 12000.00),
(9, 24,'Suite', '2024-01-25', '2024-01-28', 15000.00),
(10, 25,'Single', '2024-01-26', '2024-01-29', 6000.00);
INSERT INTO Payments (BookingID, PaymentDate, AmountPaid, PaymentMethod) VALUES
(1, '2024-01-03', 4000.00, 'Credit Card'),
(2, '2024-01-05', 9000.00, 'Cash'),
(3, '2024-01-06', 10000.00, 'Debit Card'),
(4, '2024-01-08', 6000.00, 'Credit Card'),
(5, '2024-01-09', 9000.00, 'Cash'),
(6, '2024-01-10', 15000.00, 'Bank Transfer'),
(7, '2024-01-11', 6000.00, 'Credit Card'),
(8, '2024-01-15', 18000.00, 'Cash'),
(9, '2024-01-18', 40000.00, 'Debit Card'),
(10, '2024-01-14', 6000.00, 'Credit Card'),
(11, '2024-01-15', 9000.00, 'Cash'),
(12, '2024-01-16', 15000.00, 'Bank Transfer'),
(13, '2024-01-19', 10000.00, 'Credit Card'),
(14, '2024-01-20', 15000.00, 'Debit Card'),
(15, '2024-01-23', 30000.00, 'Cash'),
(16, '2024-01-20', 6000.00, 'Bank Transfer'),
(17, '2024-01-21', 9000.00, 'Credit Card'),
(18, '2024-01-22', 15000.00, 'Cash'),
(19, '2024-01-23', 6000.00, 'Debit Card'),
(20, '2024-01-24', 9000.00, 'Credit Card'),
(21, '2024-01-25', 15000.00, 'Bank Transfer'),
(22, '2024-01-26', 6000.00, 'Cash'),
(23, '2024-01-28', 12000.00, 'Debit Card'),
(24, '2024-01-28', 15000.00, 'Credit Card'),
(25, '2024-01-29', 6000.00, 'Bank Transfer');
INSERT INTO Services (ServiceName, Price) VALUES
('Room Service', 1480.00),
('Laundry', 700.00),
('Spa Treatment', 3500.00),
('Restaurant Meal', 1850.00),
('Tour Package', 9999.00),
('Airport Transfer', 4100.00),
('Gym Access', 650.00),
('Massage', 5400.00),
('Conference Room', 3900.00),
('Valet Parking', 599.00),
('Baby Sitting', 880.00),
('Special Meal Requests', 9820.00),
('Pet Care', 550.00),
('Late Checkout', 2000.00),
('Luggage Storage', 450.00),
('Dry Cleaning', 390.00), 
('Breakfast Buffet', 2300.00),
('Car Rental', 596.00),
('Personal Trainer', 420.00),
('Yoga Classes', 570.00),
('Event Planning', 1899.00),
('Photographer Services', 100.00),
('Live Music',500.00),
('Sea Activity', 7800.00),
('Wi-Fi', 360.00);
INSERT INTO Employees (FullName, Position, HireDate, Phone) VALUES
('Ahmet Yılmaz', 'Yönetici', '2018-01-12', '555-123-4567'),
('Ayşe Kaya', 'Resepsiyonist', '2019-05-20', '555-234-5678'),
('Mehmet Demir', 'Aşçı', '2020-08-15', '555-345-6789'),
('Fatma Çelik', 'Kat Görevlisi', '2021-02-10', '555-456-7890'),
('Hasan Kara', 'Bakım Görevlisi', '2017-07-25', '555-567-8901'),
('Zeynep Aksoy', 'Vale', '2022-03-01', '555-678-9012'),
('Ali Şahin', 'Güvenlik', '2021-06-18', '555-789-0123'),
('Elif Özkan', 'Spa Terapisti', '2023-04-05', '555-890-1234'),
('Burak Aydın', 'Barmen', '2019-09-11', '555-901-2345'),
('Gamze Polat', 'Garson', '2020-11-19', '555-012-3456'),
('Kemal Çakır', 'Mutfak Asistanı', '2018-04-22', '555-123-4568'),
('Nurten Koç', 'Kat Amiri', '2023-01-15', '555-234-5679'),
('Serkan Güneş', 'Etkinlik Planlayıcı', '2020-10-30', '555-345-6780'),
('Betül Yıldız', 'Animatör', '2021-07-14', '555-456-7891'),
('Emre Akın', 'Teknik Destek', '2019-03-12', '555-567-8902'),
('Hülya Tekin', 'Muhasebe Uzmanı', '2022-06-27', '555-678-9013'),
('Murat Çelik', 'Beden Eğitimi Eğitmeni', '2020-09-15', '555-789-0124'),
('Leyla Çınar', 'Kat Görevlisi', '2018-02-20', '555-890-1235'),
('Cemal Tuncer', 'Güvenlik Amiri', '2021-12-01', '555-901-2346'),
('Pelin Özdemir', 'Ön Büro Memuru', '2019-11-10', '555-012-3457'),
('Rıza Uslu', 'Bakım Şefi', '2020-05-18', '555-123-4569'),
('Fadime Altun', 'Vale', '2021-09-25', '555-234-5670'),
('Okan Kurt', 'Spa Görevlisi', '2023-07-14', '555-345-6781'),
('Necla Çoban', 'Oda Servisi', '2020-08-30', '555-456-7892'),
('Vedat Öztürk', 'Genel Müdür Yardımcısı', '2021-03-18', '555-567-8903');
INSERT INTO ServiceUsage (BookingID, ServiceID, EmployeeID, UsageDate, Quantity, TotalCost) VALUES
(1, 1, 2, '2024-12-15', 2, 2960.00),
(2, 2, 4, '2024-12-16', 1, 700.00),
(3, 3, 6, '2024-12-17', 3, 10500.00),
(4, 4, 8, '2024-12-18', 1, 1880.00),
(5, 5, 10, '2024-12-19', 2, 19998.00),
(6, 6, 12, '2024-12-20', 1, 4100.00),
(7, 7, 14, '2024-12-21', 1, 650.00),
(8, 8, 16, '2024-12-22', 4, 21600.00),
(9, 9, 18, '2024-12-23', 2, 7800.00),
(10, 10, 20, '2024-12-24', 1, 599.00),
(11, 11, 1, '2024-12-25', 1, 880.00),
(12, 12, 3, '2024-12-26', 2, 19640.00),
(13, 13, 5, '2024-12-27', 1, 550.00),
(14, 14, 7, '2024-12-28', 1, 200.00),
(15, 15, 9, '2024-12-29', 2, 900.00),
(16, 1, 11, '2024-12-30', 1, 390.00),
(17, 2, 13, '2024-12-31', 3, 6900.00),
(18, 3, 15, '2025-01-01', 1, 596.00),
(19, 4, 17, '2025-01-02', 4, 1680.00),
(20, 5, 19, '2025-01-03', 2, 1140.00),
(21, 6, 21, '2025-01-04', 1, 1899.00),
(22, 7, 2, '2025-01-05', 1, 100.00),
(23, 8, 4, '2025-01-06', 2, 1000.00),
(24, 9, 6, '2025-01-07', 1, 7800.00),
(25, 10, 8, '2025-01-08', 3, 1080.00);

-- INSERT 3 tuples to different tables

INSERT INTO Guests (FullName, Email, Phone, Address, DateOfBirth) VALUES
('Selin Kaya', 'selin.kaya@example.com', '5552340987', 'Eskişehir, Turkey', '1993-04-22'),
('Barış Gül', 'baris.gul@example.com', '5558905678', 'Muğla, Turkey', '1991-08-19'),
('Nisa Acar', 'nisa.acar@example.com', '5554567891', 'Amasya, Turkey', '1997-12-12');

INSERT INTO Rooms (RoomNumber, RoomType, PricePerNight, Status) VALUES
('126', 'Single', 2000.00, 'Available'),
('127', 'Double', 3000.00, 'Occupied'),
('128', 'Suite', 5000.00, 'Available');

INSERT INTO Bookings (GuestID, RoomID, RoomType, CheckInDate, CheckOutDate, TotalPrice) VALUES
(26, 26, 'Single', '2024-01-30', '2024-02-02', 6000.00),
(27, 27, 'Double', '2024-02-01', '2024-02-04', 9000.00),
(28, 28, 'Suite', '2024-02-02', '2024-02-05', 15000.00);


-- INSERT 5 tuples to same table

INSERT INTO Guests (FullName, Email, Phone, Address, DateOfBirth) VALUES
('Ahmet Yılmaz', 'ahmet.yilmaz@example.com', '5551234567', 'Istanbul, Turkey', '1985-03-14'),
('Zeynep Çelik', 'zeynep.celik@example.com', '5552345678', 'Ankara, Turkey', '1990-07-21'),
('Mehmet Demir', 'mehmet.demir@example.com', '5553456789', 'Izmir, Turkey', '1988-11-03'),
('Elif Öztürk', 'elif.ozturk@example.com', '5554567890', 'Bursa, Turkey', '1995-05-18'),
('Can Polat', 'can.polat@example.com', '5555678901', 'Antalya, Turkey', '1992-09-30');

-- UPDATE 3 tuples in different tables

UPDATE Guests
SET FullName = 'Ahmet Can Yılmaz', Email = 'ahmet.can.yilmaz@example.com'
WHERE GuestID = 1;

UPDATE Rooms
SET Status = 'Occupied'
WHERE RoomID = 10; 

UPDATE Payments
SET AmountPaid = 4500.00, PaymentMethod = 'Credit Card'
WHERE PaymentID = 2;

-- DELETE 3 tuples in different tables

SELECT * FROM Guests WHERE GuestID = 25;

DELETE FROM Guests
WHERE GuestID = 25;

SELECT * FROM Guests WHERE GuestID = 15;
select * from Bookings where GuestId=26;

delete from Bookings
where GuestID= 26;

DELETE FROM Guests
WHERE GuestID = 26;

-- Add CHECK constraint

ALTER TABLE ServiceUsage
ADD CONSTRAINT chk_quantity CHECK (Quantity > 0);


-- Create 3 queries with WHERE clause and comparison operators

SELECT GuestID, FullName, DateOfBirth
FROM Guests
WHERE DateOfBirth < '1995-01-01';

SELECT RoomID, RoomNumber, RoomType, PricePerNight
FROM Rooms
WHERE PricePerNight > 3000;

SELECT PaymentID, BookingID, AmountPaid, PaymentMethod
FROM Payments
WHERE AmountPaid >= 10000
AND PaymentMethod = 'Credit Card';


-- Create 3 queries with WHERE clause and arithmetic operators

SELECT RoomID, RoomNumber, RoomType, PricePerNight, Status
FROM Rooms
WHERE (PricePerNight + 500) > 3500;

SELECT ServiceUsageID, BookingID, ServiceID, Quantity, TotalCost
FROM ServiceUsage
WHERE TotalCost < (Quantity * 1000);

SELECT BookingID, GuestID, RoomID, TotalPrice
FROM Bookings
WHERE TotalPrice > (3 * (SELECT PricePerNight FROM Rooms WHERE Rooms.RoomID = Bookings.RoomID));


-- Create 3 queries with WHERE clause and logical operators

SELECT BookingID, GuestID, RoomID, TotalPrice, CheckOutDate
FROM Bookings
WHERE TotalPrice > 10000 AND CheckOutDate > '2024-01-15';

SELECT RoomID, RoomNumber, RoomType, PricePerNight, Status
FROM Rooms
WHERE RoomType = 'Suite' OR PricePerNight < 3000;

SELECT GuestID, FullName, Email
FROM Guests
WHERE NOT Email LIKE '%@example.com';



-- Create 3 queries with special operators (BETWEEN, IS NULL, LIKE, IN, EXISTS)
SELECT BookingID, GuestID, RoomID, TotalPrice
FROM Bookings
WHERE TotalPrice BETWEEN 5000 AND 15000;

SELECT GuestID, FullName, Email
FROM Guests
WHERE Email IS NULL;

SELECT GuestID, FullName
FROM Guests
WHERE EXISTS (
SELECT 1
FROM Bookings
WHERE Bookings.GuestID = Guests.GuestID AND Guests.GuestID = 5
);



-- Create 3 queries with ORDER BY clause 
SELECT BookingID, GuestID, RoomID, CheckInDate, CheckOutDate, TotalPrice
FROM Bookings
ORDER BY CheckInDate ASC;

SELECT GuestID, FullName, Email, Phone, DateOfBirth
FROM Guests
ORDER BY FullName DESC;

SELECT RoomID, RoomNumber, RoomType, PricePerNight, Status
FROM Rooms
ORDER BY PricePerNight DESC, RoomNumber ASC;



-- Create 3 queries with DISTINCT clause

SELECT DISTINCT RoomType
FROM Rooms;

SELECT DISTINCT Status
FROM Rooms;

SELECT DISTINCT PaymentMethod
FROM Payments; 



-- Create 7 queries with String Functions
SELECT GuestID, UPPER(FullName) AS FullName_Uppercase
FROM Guests;

SELECT GuestID, LOWER(Email) AS Email_Lowercase
FROM Guests;

SELECT GuestID, CONCAT(FullName, ' - ', Email) AS Guest_Info
FROM Guests;

SELECT RoomID, RoomType, SUBSTRING(RoomType, 1, 5) AS ShortRoomType
FROM Rooms;

SELECT GuestID, FullName, LENGTH(FullName) AS Name_Length
FROM Guests;

SELECT RoomID, TRIM(Status) AS Trimmed_Status
FROM Rooms;

SELECT GuestID, Email, REPLACE(Email, '@', '[at]') AS Obfuscated_Email
FROM Guests;



-- 	Create 7 queries with Numeric Functions
SELECT BookingID, TotalPrice, ROUND(TotalPrice) AS Rounded_TotalPrice
FROM Bookings;

SELECT BookingID, TotalPrice, CEIL(TotalPrice) AS Ceil_TotalPrice
FROM Bookings;

SELECT BookingID, TotalPrice, FLOOR(TotalPrice) AS Floor_TotalPrice
FROM Bookings;

SELECT ServiceUsageID, TotalCost, ABS(TotalCost - 5000) AS Absolute_CostDifference
FROM ServiceUsage;

SELECT RoomID, PricePerNight, MOD(PricePerNight, 500) AS Remainder
FROM Rooms;

SELECT RoomID, PricePerNight, POWER(PricePerNight, 2) AS Squared_Price
FROM Rooms;

SELECT BookingID, TotalPrice, SQRT(TotalPrice) AS SquareRoot_Price
FROM Bookings;



  

