<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="CruizeControlRentalCars.View.Admin.Cars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background-image: url('../../Assets/Img/car-png-16830.png');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }

        .input-container {
            background-color: rgba(173, 216, 230, 0.9);
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px; 
            border-radius: 10px; 
            color: blue; 
        }

        .auto-style {
            width: 100%;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: var(--bs-body-color);
            background-clip: padding-box;
            border-radius: var(--bs-border-radius);
            height: 35px; 
        }

        .auto-style4 {
            width: 201px;
            height: 144px;
            margin-left: 300px;
        }

        .error-message {
            margin-top: 5px;
            font-weight: bold;
            color: red;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h3 class="text-center">Manage Cars</h3>
                <img src="../../Assets/Img/car-png-39071.png" class="auto-style4">

                <div class="input-container mb-4">
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="txtRegNo" class="form-label">Registration Number</label>
                            <asp:TextBox ID="txtRegNo" runat="server" CssClass="auto-style" placeholder="Enter Car Registration Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRegNo" ErrorMessage="Required!!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6">
                            <label for="txtBrand" class="form-label">Brand</label>
                            <asp:TextBox ID="txtBrand" runat="server" CssClass="auto-style" placeholder="Enter Car Brand Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtBrand" ErrorMessage="Required!!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="txtMake" class="form-label">Make</label>
                            <asp:TextBox ID="txtMake" runat="server" CssClass="auto-style" placeholder="Enter Car Make"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMake" ErrorMessage="Required!!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6">
                            <label for="txtYearMake" class="form-label">Year Make</label>
                            <asp:TextBox ID="txtYearMake" runat="server" CssClass="auto-style" placeholder="Enter Car Year Make"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtYearMake" ErrorMessage="Required!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="txtColor" class="form-label">Color</label>
                            <asp:TextBox ID="txtColor" runat="server" CssClass="auto-style" placeholder="Enter Car Color"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtColor" ErrorMessage="Required!!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6">
                            <label for="txtMileage" class="form-label">Mileage</label>
                            <asp:TextBox ID="txtMileage" runat="server" CssClass="auto-style" placeholder="Enter Car Mileage"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMileage" ErrorMessage="Required!!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="txtCapacity" class="form-label">Capacity</label>
                            <asp:TextBox ID="txtCapacity" runat="server" CssClass="auto-style" placeholder="Enter Car Capacity"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCapacity" ErrorMessage="Required!!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6">
                            <label for="txtPrice" class="form-label">Price</label>
                            <asp:TextBox ID="txtPrice" runat="server" CssClass="auto-style" placeholder="Enter Car Daily Rate"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPrice" ErrorMessage="Required!!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="ddlTransmission" class="form-label">Transmission</label>
                            <asp:DropDownList ID="ddlTransmission" runat="server" CssClass="auto-style">
                                <asp:ListItem Text="Manual" Value="Manual"></asp:ListItem>
                                <asp:ListItem Text="Automatic" Value="Automatic"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-6">
                            <label for="ddlAvailable" class="form-label">Availability</label>
                            <asp:DropDownList ID="ddlAvailable" runat="server" CssClass="auto-style">
                                <asp:ListItem Text="Yes" ></asp:ListItem>
                                <asp:ListItem Text="No" ></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="fileUpload" class="form-label">Upload Image</label>
                        <asp:FileUpload ID="fileUpload" runat="server" CssClass="auto-style" />
                    </div>

                    <div class="mb-3">
                        <asp:Button ID="BtnAdd" runat="server" CssClass="btn btn-light" Text="Add Car" OnClick="BtnAdd_Click" />
                    </div>

                    <asp:Label ID="lblError" runat="server" CssClass="error-message"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
