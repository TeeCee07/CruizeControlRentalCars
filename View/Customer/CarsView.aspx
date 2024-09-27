<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="CarsView.aspx.cs" Inherits="CruizeControlRentalCars.View.Customer.CarsView" %>
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

        .filter-container select {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
            background-color: transparent;
            color: #333;
        }

        /* Content starts below the filters */
        .content-wrapper {
            padding-top: 150px;
            max-height: calc(100vh - 150px);
            overflow-y: auto;
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
        <div class="rental-details">
            <p><strong>Location:</strong> [Selected Location]</p>
            <p><strong>Rental Start Date:</strong> [Start Date]</p>
            <p><strong>Rental End Date:</strong> [End Date]</p>
            <p><strong>Times:</strong> [Start Time] to [End Time]</p>
        </div>
    </div>

    <!-- Car Listings Section -->
    <div class="content-wrapper">
        <div id="carList" class="car-list">
            <asp:Repeater ID="RepeaterCars" runat="server">
                <ItemTemplate>
                    <div class="car-item">
                        <img src='<%# Eval("ImagePath") %>' alt='<%# Eval("Car_Brand") %>' />
                        <div class="car-info">
                            <h3><%# Eval("Car_Brand") %> <%# Eval("Car_Make") %> - <%# Eval("YearMake") %></h3>
                            <p>Price: <%# Eval("Car_Daily_Rate", "{0:C}") %> / day</p>
                            <p>Seats: <%# Eval("Car_Capacity") %> | Transmission: <%# Eval("Transmission") %>  %></p>
                            <asp:Button ID="btnBook" runat="server" Text="Book Vehicle" CssClass="book-btn" CommandArgument='<%# Eval("RegistrationNo") %>' OnClick="BookVehicle" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
