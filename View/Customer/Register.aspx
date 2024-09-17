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
    
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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
    
   <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <div class="logo">CruiseControlRentals</div>
    </header>
    <main>
        <section class="registration-form">
            <h1>Register</h1>
            <form action="#" method="post">
                <label for="first-name">First Name</label>
                <input type="text" id="first-name" name="first-name" placeholder="Enter your first name" required>
                
                <label for="last-name">Last Name</label>
                <input type="text" id="last-name" name="last-name" placeholder="Enter your last name" required>
                
                <label for="phone-number">Phone Number</label>
                <input type="tel" id="phone-number" name="phone-number" placeholder="Enter your phone number" required>
                
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" placeholder="Enter your email address" required>
                
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
                
                <label for="confirm-password">Confirm Password</label>
                <input type="password" id="confirm-password" name="confirm-password" placeholder="Confirm your password" required>
                
                <button type="submit">Submit</button>
            </form>
        </section>
    </main>
    <footer>
        <p>© 2024 CruiseControlRentals. All rights reserved.</p>
    </footer>
</body>
</html>

            <div class="col-md-8"></div>
            <table class="table">

                
            </table>
       
</asp:Content>

