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

        /* Rental Details */
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

        /* Content starts below the filters */
        .content-wrapper {
            padding-top: 150px;
            max-height: calc(100vh - 150px);
            overflow-y: auto;
        }

        .car-list {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            padding: 20px;
            justify-content: space-between;
        }

        .car-item {
            background-color: rgba(173, 216, 230, 0.9);
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: center;
            gap: 20px;
            width: calc(50% - 10px); /* Two cars per line */
        }

        .car-item img {
            width: 150px; /* Set a fixed width for the image */
            height: auto;
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
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            width: 100%;
        }

        .book-btn:hover {
            background-color: #0056b3;
        }

        /* Encouragement Section */
        .encouragement-section {
            text-align: center;
            margin: 30px 0;
            margin-top :-70px;
            font-size: 20px;
            color: #007bff;
            background-color: rgba(255, 255, 255, 0.95);
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 800px;
            margin-left: auto;
            margin-right: auto;
        }

        .encouragement-section strong {
            font-weight: bold;
        }
        .auto-style1 {
            position: fixed;
            top: 50px;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 10px 20px;
            border-bottom: 1px solid #ccc;
            z-index: 999;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 15px;
            left: 0px;
        }
    </style>

     <!-- Search Information and Filter Section -->
    <div class="auto-style1">
        <div class="rental-details">
            <!-- Literal for dynamic rental details -->
            <asp:Literal ID="rentalDetailsLiteral" runat="server"></asp:Literal>
        </div>
    </div>

    <!-- Encouragement Section -->
    <div class="encouragement-section">
        <strong>Book your car now and enjoy an unforgettable ride!</strong> 
        Choose from our wide selection of vehicles at unbeatable prices.
    </div>

    <!-- Car Listings Section -->
    <div class="content-wrapper">
        <div id="carList" class="car-list">
            <asp:Repeater ID="RepeaterCars" runat="server">
                <ItemTemplate>
                    <div class="car-item">
                        <img src='<%# ResolveUrl(Eval("ImagePath").ToString()) %>' alt='<%# Eval("Car_Brand") %>' />
                        <div class="car-info">
                            <h3><%# Eval("Car_Brand") %> <%# Eval("Car_Make") %> - <%# Eval("YearMake") %></h3>
                            <p>Price: <%# Eval("Car_Daily_Rate", "{0:C}") %> / day</p>
                            <p>Seats: <%# Eval("Car_Capacity") %> | Transmission: <%# Eval("Transmission") %></p>
                            <asp:Button ID="btnBook" runat="server" Text="Book Vehicle" CssClass="book-btn" CommandArgument='<%# Eval("RegistrationNo") %>' OnClick="BookVehicle" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
