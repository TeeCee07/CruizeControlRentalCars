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
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>Car Registration Number</th>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>Car Brand</th>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>Car Make</th>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>Car Year Make</th>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>Car Color</th>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>Daily Rate</th>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>Booking Duration</th>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>Total Price</th>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div class="button">
            <asp:Button ID="btnConfirmBooking" runat="server" Text="Confirm Booking" CssClass="btn btn-primary"  />
        </div>
    </div>
</asp:Content>

