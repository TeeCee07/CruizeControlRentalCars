<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="CruizeControlRentalCars.View.Admin.Cars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head"  runat="server">
    <style type="text/css">
        body {
            background-image: url('../../Assets/Img/car-png-16830.png');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }

        .auto-style2, .auto-style3 {
            display: block;
            width: 100%;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: var(--bs-body-color);
            appearance: none;
            background-clip: padding-box;
            border-radius: var(--bs-border-radius);
            transition: none;
            height: 25px;
            background-color: var(--bs-body-bg);
        }

        .auto-style4 {
            width: 201px;
            height: 144px;
            margin-left: -135px;
        }

        .auto-style5 {
            margin-left: -120px;
        }

        .table thead th {
            background-color: #007bff;
            color: white;

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
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="auto-style5">Manage Cars</h3>
                    <div class="col"></div>
                    <div class="col"></div><img src="../../Assets/Img/car-png-39071.png" class="auto-style4">
                </div>
                    </div>
                    </div>
                <div class="row">
                    <div class="col d-grid">
                       <div class="mb-3">
    <label for="txtRegNo" class="form-label">Registration Number</label>
    <asp:TextBox ID="txtRegNo" runat="server" CssClass="auto-style3" placeholder="Enter Car Registration Number"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRegNo" ErrorMessage="Required!!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
</div>

<div class="mb-3">
    <label for="txtBrand" class="form-label">Brand</label>
    <asp:TextBox ID="txtBrand" runat="server" CssClass="auto-style2" placeholder="Enter Car Brand Name"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtBrand" ErrorMessage="Required!!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
</div>

<div class="mb-4">
    <label for="txtMake" class="form-label">Make</label>
    <asp:TextBox ID="txtMake" runat="server" CssClass="auto-style3" placeholder="Enter Car Make"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMake" ErrorMessage="Required!!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
</div>

<div class="mb-5">
    <label for="txtYearMake" class="form-label">Year Make</label>
    <asp:TextBox ID="txtYearMake" runat="server" CssClass="auto-style3" placeholder="Enter Car Year Make"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtYearMake" ErrorMessage="Required!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
</div>

<div class="mb-6">
    <label for="txtColor" class="form-label">Color</label>
    <asp:TextBox ID="txtColor" runat="server" CssClass="auto-style3" placeholder="Enter Car Color"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtColor" ErrorMessage="Required!!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
</div>
<div class="mb-7">
    <label for="txtMileage" class="form-label">Mileage</label>
    <asp:TextBox ID="txtMileage" runat="server" CssClass="auto-style3" placeholder="Enter Car Mileage"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMileage" ErrorMessage="Required!!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
</div>
 <div class="mb-7">
    <label for="txtCapacity" class="form-label">Capacity</label>
    <asp:TextBox ID="txtCapacity" runat="server" CssClass="auto-style3" placeholder="Enter Car Capacity"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCapacity" ErrorMessage="Required!!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
</div>
 <div class="mb-8">
    <label for="txtPrice" class="form-label">Price</label>
    <asp:TextBox ID="txtPrice" runat="server" CssClass="auto-style3" placeholder="Enter Car Daily Rate"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPrice" ErrorMessage="Required!!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
</div>
<div class="mb-9">
    <label for="ddlTransmission" class="form-label">Transmission</label>
  <asp:DropDownList ID="ddlTransmission" runat="server">
    <asp:ListItem Text="Manual" value="1" ></asp:ListItem>
    <asp:ListItem Text="Automatic" Value="2" ></asp:ListItem>
</asp:DropDownList>
</div>



                        <div class="mb-3">
                            <label for="ddlAvailable" class="form-label">Available</label>
                            <asp:DropDownList ID="ddlAvailable" runat="server">
                                <asp:ListItem>Available</asp:ListItem>
                                <asp:ListItem>Booked</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                                <div class="mb-3">
                                <label for="fileUpload" class="form-label">Upload Car Picture</label>
                                <asp:FileUpload ID="fileUpload" runat="server" />
                                <asp:Label ID="lblError" runat="server" ForeColor="Red" CssClass="error-message" />
                            </div>
                                                              <div class="d-flex">
                            <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-primary" Text="Edit" OnClick="BtnEdit_Click" />
                            <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary" Text="Add" OnClick="BtnAdd_Click" />
                            <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-primary" Text="Delete" OnClick="BtnDelete_Click" />
                        </div>

                    
                </div>
            </div>
            <div class="col-md-8">
               
                <h3>All Cars</h3>
                <asp:GridView ID="gvCars" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped">
                    <Columns>
                        <asp:BoundField DataField="RegistrationNo" HeaderText="Registration Number" />
                        <asp:BoundField DataField="Car_Brand" HeaderText="Brand" />
                        <asp:BoundField DataField="Car_Make" HeaderText="Make" />
                        <asp:BoundField DataField="YearMake" HeaderText="Year Make" />
                        <asp:BoundField DataField="Color" HeaderText="Color" />
                        <asp:BoundField DataField="Transmission" HeaderText="Transmission" />
                        <asp:BoundField DataField="Car_Daily_Rate" HeaderText="Daily Rate" />
                        <asp:BoundField DataField="Available" HeaderText="Availability" />
                        <asp:BoundField DataField="ImagePath" HeaderText="Picture" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
