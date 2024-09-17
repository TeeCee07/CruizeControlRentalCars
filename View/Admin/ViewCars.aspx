<%@ Page Title="Available Cars" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="ViewCars.aspx.cs" Inherits="CruizeControlRentalCars.View.Admin.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody2" runat="server">
    <style type="text/css">
        body {
            background-image: url('../../Assets/Img/pic3.jpg');
            background-size: cover;
            background-attachment: fixed; 
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

       

        /* Search Information and Filter */
        .search-filter-container {
            position: fixed;
            top: 60px;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 10px 20px;
            border-bottom: 1px solid #ccc;
            z-index: 999;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 15px;
        }

        /* Rental Details (Horizontal Layout) */
        .rental-details {
            display: flex;
            gap: 30px;
            flex-wrap: wrap;
        }

        .rental-details p {
            margin: 0;
        }

        .rental-details p strong {
            font-weight: bold;
        }

        /* Filter and Sort Section (Horizontal Layout) */
        .filter-container {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .filter-container label {
            font-weight: bold;
        }

        .filter-container select {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
            background-color: transparent;
            color: #333;
        }

        .filter-icon {
            width: 20px;
            height: 20px;
            display: inline-block;
            margin-right: 8px;
        }

        /* Content starts below the filters */
        .content-wrapper {
            padding-top: 150px; /* Space to push content below the fixed sections */
            max-height: calc(100vh - 150px);
            overflow-y: auto; /* Scroll the car listings only */
        }

        .car-list {
            display: flex;
            flex-direction: column;
            gap: 15px;
            padding: 20px;
        }

        .car-item {
            background-color: white;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .car-item img {
            max-width: 150px;
            max-height: 100px;
            border-radius: 5px;
        }

        .car-info {
            flex: 1;
        }

        .car-info h3 {
            margin: 0 0 10px;
            font-size: 18px;
            color: #333;
        }

        .car-info p {
            margin: 5px 0;
            color: #666;
        }

        .book-btn {
            padding: 8px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
        }

        .book-btn:hover {
            background-color: #0056b3;
        }
    </style>

   

    <!-- Search Information and Filter Section -->
    <div class="search-filter-container">
        <!-- Rental Details in Horizontal Layout -->
        <div class="rental-details">
            <p><strong>Location:</strong> [Selected Location]</p>
            <p><strong>Rental Start Date:</strong> [Start Date]</p>
            <p><strong>Rental End Date:</strong> [End Date]</p>
            <p><strong>Times:</strong> [Start Time] to [End Time]</p>
        </div>

        <!-- Filter and Sort Options -->
        <div class="filter-container">
            <div>
                <label for="sortByDropdown">Sort by:</label>
                <select id="sortByDropdown">
                    <option value="price">Price</option>
                    <option value="name">Name</option>
                </select>
            </div>
            <div>
                <label for="filterDropdown">
                    <img src="path/to/filter-icon.png" alt="Filter" class="filter-icon" />
                    Filter by:
                </label>
                <select id="filterDropdown">
                    <option value="all">All Cars</option>
                    <option value="mini">Mini</option>
                    <option value="sedan">Sedan</option>
                    <option value="suv">SUV</option>
                </select>
            </div>
        </div>
    </div>

    <!-- Car Listings Section -->
    <div class="content-wrapper">
        <div id="carList" class="car-list">
            <!-- Example Car Item -->
            <div class="car-item">
                <img src="path/to/car-image.jpg" alt="Car Name" />
                <div class="car-info">
                    <h3>Car Name</h3>
                    <p>Price: $100/day</p>
                    <p>Seats: 4 | Doors: 4 | Transmission: Manual | AC: Yes</p>
                    <button class="book-btn">Book Vehicle</button>
                </div>
            </div>
            <!-- Repeat car items as needed -->
        </div>
    </div>
</asp:Content>
