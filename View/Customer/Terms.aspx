<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Terms.aspx.cs" Inherits="CruizeControlRentalCars.View.Customer.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="mybody2" runat="server">
    
    <style type="text/css">
        body {
            background-image: url('../../Assets/Img/TermsBackground.png');
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

        .terms-section {
            padding: 20px;
    
            margin: 20px;
            color: #333;
        }

        .terms-section h2 {
            margin-top: 0;
        }

        .terms-section p {
            margin-bottom: 15px;
        }
    </style>

    <div class="container-fluid">
      

        <div class="terms-section">
            <h2>Terms and Conditions</h2>
            <p>Welcome to <strong>Cruize Control Car Rentals</strong>. These Terms and Conditions govern the rental of vehicles from our company. By renting a vehicle from us, you agree to these terms in full. Please read them carefully before using our services.</p>
            
            <h3>1. Eligibility for Rental</h3>
            <p>Renters must be at least 21 years old. Drivers under the age of 25 may be subject to additional charges. All renters must hold a valid driver’s license for at least one year prior to the rental date. International drivers must present a valid International Driving Permit (IDP) if required.</p>
            
            <h3>2. Booking and Reservation</h3>
            <p>A reservation confirmation will be sent once a booking is made. Full payment or a deposit is required to confirm the reservation. Payment can be made via credit or debit card.</p>
            
            <h3>3. Rental Period</h3>
            <p>The rental period begins at the time of vehicle pickup and ends when the vehicle is returned to the agreed-upon location. Late returns may incur additional charges.</p>
            
            <h3>4. Vehicle Use</h3>
            <p>The vehicle may only be used for lawful purposes. The vehicle is to be driven by the renter or any additional authorized drivers listed in the rental agreement. Violations may result in penalties.</p>

            <h3>5. Insurance and Liability</h3>
            <p>All vehicles come with basic third-party liability insurance. Renters may opt for additional insurance coverage for an extra fee. The renter is responsible for any damage, loss, or theft of the vehicle during the rental period.</p>
            
            <h3>6. Cancellation and Refund Policy</h3>
            <p>Cancellations made more than 48 hours prior to the rental start date will be eligible for a full refund. Cancellations made within 48 hours of the rental period may incur a cancellation fee of up to 50% of the total rental cost.</p>
            
            <h3>7. Governing Law</h3>
            <p>These Terms and Conditions are governed by and construed in accordance with the laws of [Jurisdiction].</p>

            <p>For any questions or concerns regarding these Terms and Conditions, please contact us at:</p>
            <p><strong>Cruize Control Car Rentals</strong><br />
            Call: 0123456789<br />
            Email: support@cruizecontrol.com<br /></p>
        </div>
    </div>

</asp:Content>
