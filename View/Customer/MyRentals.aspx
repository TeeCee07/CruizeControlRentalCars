<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="MyRentals.aspx.cs" Inherits="CruizeControlRentalCars.View.Customer.MyRentals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mybody2" runat="server">
    <div class="container mt-5">
        <h2>Rental History</h2>
        <asp:GridView ID="gvRentalHistory" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered">
            <Columns>
                <asp:BoundField DataField="RentalID" HeaderText="Rental ID" />
                <asp:BoundField DataField="CarName" HeaderText="Car" />
                <asp:BoundField DataField="PickupDate" HeaderText="Pick-up Date" DataFormatString="{0:dd-MM-yyyy}" />
                <asp:BoundField DataField="ReturnDate" HeaderText="Return Date" DataFormatString="{0:dd-MM-yyyy}" />
                <asp:BoundField DataField="Price" HeaderText="Total Price" DataFormatString="{0:C}" />
                <asp:BoundField DataField="Status" HeaderText="Status" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="lblMessage" runat="server" CssClass="text-danger" Visible="false"></asp:Label>
    </div>
</asp:Content>

