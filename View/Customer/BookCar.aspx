<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="BookCar.aspx.cs" Inherits="CruizeControlRentalCars.View.Customer.BookCar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody2" runat="server">
   
    <style type="text/css">
        .details-table {
            width: 100%;
            border-collapse: collapse;
        }
        .details-table th, .details-table td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        .details-table th {
            background-color: #f2f2f2;
        }
        .button {
            margin-top: 20px;
        }
    </style>

    <div class="container">
        <h2>Booking Details</h2>
        <table class="details-table">
            <tr>
                <th>Customer Name</th>
                <td><asp:Label ID="lblCustomerName" runat="server" Text="John Doe"></asp:Label></td>
            </tr>
            <tr>
                <th>Car Registration Number</th>
                <td><asp:Label ID="lblRegNo" runat="server" Text="ABC1234"></asp:Label></td>
            </tr>
            <tr>
                <th>Car Brand</th>
                <td><asp:Label ID="lblBrand" runat="server" Text="Toyota"></asp:Label></td>
            </tr>
            <tr>
                <th>Car Make</th>
                <td><asp:Label ID="lblMake" runat="server" Text="Corolla"></asp:Label></td>
            </tr>
            <tr>
                <th>Car Year Make</th>
                <td><asp:Label ID="lblYearMake" runat="server" Text="2020"></asp:Label></td>
            </tr>
            <tr>
                <th>Car Color</th>
                <td><asp:Label ID="lblColor" runat="server" Text="Red"></asp:Label></td>
            </tr>
            <tr>
                <th>Daily Rate</th>
                <td><asp:Label ID="lblDailyRate" runat="server" Text="$50"></asp:Label></td>
            </tr>
            <tr>
                <th>Booking Duration</th>
                <td><asp:Label ID="lblDuration" runat="server" Text="3 Days"></asp:Label></td>
            </tr>
            <tr>
                <th>Total Price</th>
                <td><asp:Label ID="lblTotalPrice" runat="server" Text="$150"></asp:Label></td>
            </tr>
        </table>
        <div class="button">
            <asp:Button ID="btnConfirmBooking" runat="server" Text="Confirm Booking" CssClass="btn btn-primary"  />
        </div>
    </div>
</asp:Content>

