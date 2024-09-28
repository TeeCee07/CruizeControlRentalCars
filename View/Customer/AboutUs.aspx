<%@ Page Title="About Us" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="CruizeControlRentalCars.View.Customer.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mybody2" runat="server">
    
    <style type="text/css">
        body {
            background-image: url('../../Assets/Img/AboutBackground.png');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            height: 100vh;
        }

        .about-container {
            margin: 50px auto;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.9);
            max-width: 800px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }

        .about-container h1, 
        .about-container h2, 
        .about-container p {
            margin-bottom: 20px;
            color: #333;
        }

        .about-container h1 {
            font-size: 32px;
            text-align: center;
        }

        .about-container h2 {
            font-size: 24px;
            color: #007BFF;
        }

        .about-container p {
            line-height: 1.6;
        }

        .about-container a {
            color: #007BFF;
            text-decoration: none;
        }

        .about-container a:hover {
            text-decoration: underline;
        }

    </style>

    <div class="about-container">
        <h1>About Us</h1>
        <p><strong>Welcome to Cruize Control Car Rentals!</strong><br />
        Where your journey begins, and comfort meets reliability.</p>

        <h2>Who We Are</h2>
        <p>At <strong>Cruize Control Car Rentals</strong>, we are passionate about delivering a seamless and memorable car rental experience. Whether you're renting for business, pleasure, or everyday use, we offer an extensive fleet of vehicles to suit every traveler’s need. From compact cars for quick city trips to luxurious sedans and SUVs for road adventures, we take pride in ensuring that our customers drive away in a vehicle they love.</p>

        <h2>Our Mission</h2>
        <p>Our mission is simple:<br />
        <strong>To offer high-quality car rentals with unmatched convenience and customer service, making travel easier for everyone.</strong></p>

        <h2>Why Choose Cruize Control?</h2>
        <ul>
            <li><strong>Diverse Fleet:</strong> Choose from a wide variety of vehicles – economy cars, luxury sedans, family SUVs, and more.</li>
            <li><strong>Affordable Pricing:</strong> We provide competitive rates with no hidden fees, so you always know what to expect.</li>
            <li><strong>Flexible Rentals:</strong> From short-term to long-term rentals, we provide flexible options to fit your schedule.</li>
            <li><strong>Convenient Locations:</strong> Pick up and drop off your vehicle with ease at multiple locations.</li>
            <li><strong>Customer-First Approach:</strong> Our dedicated team ensures every customer has a positive experience. We're here to assist you 24/7.</li>
        </ul>

        <h2>Our Values</h2>
        <p><strong>Customer Satisfaction:</strong> We prioritize the happiness and satisfaction of our customers, always aiming to exceed expectations.</p>
        <p><strong>Transparency:</strong> We believe in honest communication. Our pricing is clear, and our terms are straightforward.</p>
        <p><strong>Safety First:</strong> All our vehicles undergo rigorous inspection and maintenance to ensure they meet the highest safety standards.</p>
        <p><strong>Sustainability:</strong> We are continually working to introduce eco-friendly and fuel-efficient vehicles to reduce our environmental footprint.</p>

        <h2>Our Story</h2>
        <p>Established in [Year], <strong>Cruize Control Car Rentals</strong> began with a simple idea – to revolutionize the car rental industry by offering a hassle-free experience that caters to the needs of modern travelers. Starting with just a handful of vehicles, we’ve grown into a trusted rental service with a wide range of options for customers across multiple locations.</p>

        <h2>Looking Ahead</h2>
        <p>As we grow, our commitment remains the same: to provide you with the best possible car rental experience. Whether you're renting for a few hours or several weeks, <strong>Cruize Control Car Rentals</strong> is here to make sure your journey is smooth, enjoyable, and hassle-free.</p>

    </div>

</asp:Content>
