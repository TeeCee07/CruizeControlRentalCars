-- Create the CarRental database
CREATE DATABASE CarRental;
GO

-- Use the CarRental database
USE CarRental;
GO

-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,  
    CustomerName NVARCHAR(100),
    CustomerAddress NVARCHAR(255)
);

-- Cars Table
CREATE TABLE Cars (
    CarID INT PRIMARY KEY,
    CarRegistrationNumber NVARCHAR(50),
    CarBrand NVARCHAR(50),
    CarMake NVARCHAR(50),
    CarYearMake INT,
    CarColour NVARCHAR(50)
);

-- Bookings Table
CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY IDENTITY(1,1),  
    CustomerID INT,
    CarID INT,
    BookingDate DATE,
    BookingDuration INT,
    DailyRate DECIMAL(10, 2),  
    TotalPrice AS (DailyRate * BookingDuration),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (CarID) REFERENCES Cars(CarID)
);

-- Payments Table
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    BookingID INT,
    PaymentDate DATE,
    AmountPaid DECIMAL(10, 2),
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);
GO
