<%@ Page Title="Customers" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="CruizeControlRentalCars.View.Admin.Customers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-image: url('../../Assets/Img/customers-bg.png');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }

        .table {
            margin-top: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <h3>All Customers</h3>
        <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" HeaderStyle-CssClass="thead-dark">
            <Columns>
                <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" />
                <asp:BoundField DataField="Name" HeaderText="Customer Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" />
                <asp:BoundField DataField="RentedCars" HeaderText="Rented Cars" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
