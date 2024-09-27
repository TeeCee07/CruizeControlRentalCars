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
        .form-control {
            width: 100%;
            padding: 5px;
            box-sizing: border-box;
        }
        .container {
            background-color: #f7f7f7;
            padding: 20px;
            border-radius: 10px;
        }
    </style>

    <div class="container">
        <h2>Booking Details</h2>
        <table class="details-table">
            <tr>
                <th>Customer Name</th>
                <td>
                    <asp:TextBox ID="txtCustomerName" runat="server" CssClass="form-control" placeholder="Enter your name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Car Registration Number</th>
                <td>
                    <asp:TextBox ID="txtCarRegNo" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Car Brand</th>
                <td>
                    <asp:TextBox ID="txtCarBrand" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Car Make</th>
                <td>
                    <asp:TextBox ID="txtCarMake" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Car Year Make</th>
                <td>
                    <asp:TextBox ID="txtCarYearMake" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Car Color</th>
                <td>
                    <asp:TextBox ID="txtCarColor" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Daily Rate</th>
                <td>
                    <asp:TextBox ID="txtDailyRate" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Booking Duration (days)</th>
                <td>
                    <asp:TextBox ID="txtBookingDuration" runat="server" CssClass="form-control" placeholder="Enter duration in days"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Total Price</th>
                <td>
                    <asp:TextBox ID="txtTotalPrice" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
        </table>
        <div class="button">
            <asp:Button ID="btnConfirmBooking" runat="server" Text="Confirm Booking" CssClass="btn btn-primary" OnClick="btnConfirmBooking_Click" />
        </div>
    </div>
</asp:Content>
