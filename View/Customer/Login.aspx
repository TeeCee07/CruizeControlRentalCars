<%@ Page Title="Home" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CruizeControlRentalCars.View.Admin.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody2" runat="server">

    <style type="text/css">
        body {
            background-image: url('../../Assets/Img/ado.jpeg');
            background-size: cover;
            background-repeat: no-repeat; 
            background-position: center;
            height: 100vh;
        }

        .login-container {
    position: absolute;
    top: 50%;
    right: 10%;
    transform: translateY(-50%);
    background-color: rgba(173, 216, 230, 0.9); 
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    width: 300px;
    text-align: center;
}

        .login-form .form-label {
            text-align: left;
            display: block;
            width: 100%;
        }

        .login-form input {
            width: 100%;
            margin-bottom: 15px;
        }

        .login-form button {
            width: 100%;
            margin-top: 10px;
        }

        .info-section {
            position: absolute;
            top: 50%;
            left: 5%;
            transform: translateY(-50%);
            max-width: 40%;
            color: white;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
        }

        .info-section h1, .info-section p {
            color: white;
        }

        a {
            text-decoration: none;
            color: #007BFF;
        }

        a:hover {
            color: #0056b3;
        }
    </style>

    <div class="container-fluid">
        <div class="info-section">
            <h1>Welcome to Cruize Control Rental Cars</h1>
            <p>Our car rental management system offers a seamless experience for renting cars. Whether you're looking for luxury, efficiency, or something in between, we have a wide range of vehicles to suit your needs.</p>
            <p>Manage your rentals, keep track of your bookings, and enjoy the convenience of our state-of-the-art platform.</p>
            <p>Sign in to access your account or create a new one to get started with us today!</p>
        </div>

        <div class="login-container">
            <h3>Login</h3>

            <form class="login-form">
                <<div class="mb-3">
    <label for="txtEmail" class="form-label">Email Address </label>
    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Your Email Address"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtEmail" 
        ErrorMessage="Enter A Valid Email Address!!!" 
        Font-Italic="True" 
        ForeColor="#999999" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        Display="Dynamic">
    </asp:RegularExpressionValidator>
</div>

<div class="mb-3">
    <label for="txtPassword" class="form-label">Password</label>
    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter Your Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtPassword" 
        ErrorMessage="Enter A Valid Password" 
        Font-Italic="True" 
        ForeColor="#999999" 
        Display="Dynamic">
    </asp:RequiredFieldValidator>
</div>


                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="chkRememberMe" runat="server">
                    <label class="form-check-label" for="chkRememberMe">Remember Me</label>
                </div>
                    <asp:Button ID="BtnLogin" runat="server" CssClass="btn btn-primary" Text="Login" OnClick="BtnLogin_Click" />

                <div class="mt-3">
                    <a href="#" class="text-decoration-none">Forgot Password?</a>
                </div>
                <div class="mt-2">
                    <a href="Register.aspx" class="text-decoration-none">Create Account</a>
                </div>
            </form>
        </div>
    </div>
        
</asp:Content>
