<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CarList.aspx.cs" Inherits="CruizeControlRentalCars.View.Admin.CarList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background-image: url('../../Assets/Img/car-background.png');
            background-size: cover;
        }

        .gridview-style {
            width: 100%;
            margin-top: 20px;
        }

        .table thead th {
            background-color: #007bff;
            color: white;
        }

        .table td {
            text-align: center;
        }

        .action-buttons {
            display: flex;
            justify-content: space-around;
        }

        .car-image {
            width: 100px;
            height: auto;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <div class="container">
        <h2 class="text-center">All Cars</h2>
        <p class="text-center">Below is the list of cars. You can edit or delete cars from this list, or add new cars to the system.</p>
        <asp:GridView ID="gvCarList" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped gridview-style" OnRowEditing="gvCarList_RowEditing" OnRowDeleting="gvCarList_RowDeleting" DataKeyNames="RegistrationNo">
            <Columns>
                <asp:BoundField DataField="RegistrationNo" HeaderText="Registration Number" ReadOnly="True" />
                <asp:BoundField DataField="Car_Brand" HeaderText="Brand" />
                <asp:BoundField DataField="Car_Make" HeaderText="Make" />
                <asp:BoundField DataField="YearMake" HeaderText="Year Make" />
                <asp:BoundField DataField="Color" HeaderText="Color" />
                <asp:BoundField DataField="Car_Daily_Rate" HeaderText="Daily Rate" />
                <asp:BoundField DataField="Available" HeaderText="Availability" />
                <asp:TemplateField HeaderText="Car Picture">
                    <ItemTemplate>
                        <img src='<%# ResolveUrl("~/Assets/Img/" + Eval("ImagePath")) %>' class="car-image" alt="Car Image" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>Actions</HeaderTemplate>
                    <ItemTemplate>
                        <div class="action-buttons">
                            <asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit" Text="Edit" CssClass="btn btn-warning" />
                            <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

