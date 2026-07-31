# 🚗 CruizeControlRentalCars

> A modern Car Rental Management System built to simplify vehicle rentals, customer management, and booking operations.

![GitHub](https://img.shields.io/badge/Platform-GitHub-black?logo=github)
![ASP.NET](https://img.shields.io/badge/ASP.NET-Web%20Forms-blue)
![C%23](https://img.shields.io/badge/C%23-.NET-purple)
![MySQL](https://img.shields.io/badge/Database-MySQL-orange)
![License](https://img.shields.io/badge/License-MIT-green)

---

## 📖 Overview

CruizeControlRentalCars is a web-based Car Rental Management System designed to streamline the process of renting vehicles online. The application enables customers to browse available cars, make reservations, and manage bookings, while administrators can efficiently manage vehicles, customers, bookings, and payments through a centralized dashboard.

The project focuses on creating a secure, user-friendly, and scalable rental platform using modern web technologies.

---

## ✨ Features

### 👤 Customer
- User Registration & Login
- Browse Available Vehicles
- Search & Filter Cars
- View Vehicle Details
- Book a Vehicle
- View Booking History
- Profile Management

### 🚙 Vehicle Management
- Add New Vehicles
- Edit Vehicle Information
- Delete Vehicles
- Vehicle Categories
- Availability Tracking
- Rental Pricing

### 📅 Booking Management
- Create Reservations
- Modify Bookings
- Cancel Reservations
- Rental Duration Calculation
- Booking Status Management

### 💳 Payment Management
- Payment Records
- Rental Cost Calculation
- Invoice Generation
- Payment History

### 🔐 Admin Dashboard
- Customer Management
- Vehicle Management
- Booking Management
- Reports & Analytics
- User Administration

---

## 🛠️ Technologies Used

| Technology | Purpose |
|------------|----------|
| ASP.NET Web Forms | Web Application |
| C# | Backend Development |
| MySQL | Database |
| HTML5 | Structure |
| CSS3 | Styling |
| JavaScript | Client-side Functionality |
| Bootstrap | Responsive Design |
| Git & GitHub | Version Control |

---

---

## ⚙️ Installation

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/CruizeControlRentalCars.git
```

### 2. Open the Project

Open the solution using **Visual Studio**.

### 3. Configure the Database

- Install MySQL Server.
- Create a new database.
- Import the SQL script located in the **Database** folder.

### 4. Update Connection String

Modify the connection string inside:

```
Web.config
```

Example:

```xml
<connectionStrings>
  <add name="CarRentalDB"
       connectionString="server=localhost;database=CarRentalDB;uid=root;pwd=yourpassword;"
       providerName="MySql.Data.MySqlClient"/>
</connectionStrings>
```

### 5. Run the Project

Press **F5** or click **Start** in Visual Studio.

---

## 📸 Screenshots

Coming Soon...

- Home Page
- Vehicle Listings
- Booking Page
- Admin Dashboard
- Customer Dashboard

---

## 🚀 Future Improvements

- Email Notifications
- Online Payment Gateway
- Vehicle Reviews
- GPS Vehicle Tracking
- Driver Management
- Multi-Branch Support
- Mobile Application
- REST API Integration

---

## 📊 System Modules

- Authentication
- Customer Management
- Vehicle Management
- Booking Management
- Payment Management
- Reporting
- Administration

---

## 🎯 Project Goals

- Simplify vehicle rental operations
- Improve booking efficiency
- Enhance customer experience
- Reduce paperwork
- Provide centralized vehicle management

---

## 🤝 Contributing

Contributions are welcome!

1. Fork the repository
2. Create a new branch

```bash
git checkout -b feature-name
```

3. Commit your changes

```bash
git commit -m "Add new feature"
```

4. Push your branch

```bash
git push origin feature-name
```

5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License.

---

---

⭐ If you like this project, don't forget to **Star** the repository!
