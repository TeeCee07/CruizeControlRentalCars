<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CruizeControlRentalCars.View.Admin.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody2" runat="server">

<style type="text/css"> 

    body {
        background-image: url('../../Assets/Img/pic3.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        flex-direction: column;

    }

   
    main {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 80vh;
    }

    .registration-form {
        background-color: rgba(173, 216, 230, 0.9);
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        padding: 2rem;
        border-radius: 12px;
    }

    .registration-form h1 {
        margin-bottom: 1rem;
    }

    .registration-form label {
        display: block;
        margin-bottom: 0.5rem;
    }

    .registration-form input {
        width: 100%;
        padding: 0.5rem;
        margin-bottom: 1rem;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    .registration-form button {
        width: 100%;
        padding: 0.75rem;
        background-color: #333;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .registration-form button:hover {
        background-color: #555;
    }

    footer {
        background-color: #333;
        color: #fff;
        text-align: center;
        padding: 1rem 0;
        position: fixed;
        width: 100%;
        bottom: 0;
    }
</style>

<main>
    <section class="registration-form">
        <h1>Register</h1>
        <asp:Panel ID="RegistrationPanel" runat="server">
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
            <asp:Label Text="First Name" runat="server" />
            <asp:TextBox ID="txtFirstName" runat="server" placeholder="Enter your first name" required="true"></asp:TextBox>
            
            <asp:Label Text="Last Name" runat="server" />
            <asp:TextBox ID="txtLastName" runat="server" placeholder="Enter your last name" required="true"></asp:TextBox>
            
            <asp:Label Text="Phone Number" runat="server" />
            <asp:TextBox ID="txtPhoneNumber" runat="server" placeholder="Enter your phone number" required="true"></asp:TextBox>
            
            <asp:Label Text="Email Address" runat="server" />
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your email address" required="true" TextMode="Email"></asp:TextBox>
            
            <asp:Label Text="Password" runat="server" />
            <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter your password" required="true" TextMode="Password"></asp:TextBox>
            
            <asp:Label Text="Confirm Password" runat="server" />
            <asp:TextBox ID="txtConfirmPassword" runat="server" placeholder="Confirm your password" required="true" TextMode="Password"></asp:TextBox>
            
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
        </asp:Panel>
    </section>
</main>
<footer>
    <p>© 2024 CruiseControlRentals. All rights reserved.</p>
</footer>
</asp:Content>
