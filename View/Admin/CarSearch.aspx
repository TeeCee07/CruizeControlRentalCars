<%@ Page Title="Rents" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CarSearch.aspx.cs" Inherits="CruizeControlRentalCars.View.Admin.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
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

        .content-wrapper {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding-top: 60px;
        }

        .container {
            width: 90%;
            max-width: 600px;
            padding: 20px;
            background-color: transparent;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            margin-bottom: 20px;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .search-container {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .search-box {
            display: flex;
            flex-direction: column;
        }

        .search-box input, .search-box select {
            width: 100%;
            padding: 12px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        .search-button {
            display: flex;
            justify-content: center;
        }

        .search-button button {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
        }

        /* About section */
        .about-section {
            position: absolute;
            bottom: -250px; /* Pushes it further down */
            left: 0;
            right: 0;
            text-align: center;
            font-size: 14px;
            color: #ffffff;
            background-color: #008cdd;
            padding: 10px;
            margin: 0 auto;
        }

        .about-section p {
            margin: 5px 0;
        }

        .about-links {
            display: flex;
            justify-content: center;
            gap: 10px;
            font-size: 12px;
            font-weight: bold;
        }

        .about-links a {
            color: #ffffff;
            text-decoration: none;
            transition: color 0.3s;
        }

        .about-links a:hover {
            color: #ffeb3b;
        }

        .divider {
            width: 80%;
            height: 1px;
            background-color: #ffffff;
            margin: 10px auto;
        }

        .footer {
            font-size: 12px;
            color: #ffffff;
            text-align: center;
            margin-top: 10px;
        }
    </style>

    <!-- Content Wrapper for Centering Content -->
    <div class="content-wrapper">
        <!-- Search Section -->
        <div class="container">
            <div class="search-container">
                <div class="search-box">
                    <input type="text" placeholder="Pick-up Location" />
                </div>
                <div class="search-box">
                    <input type="text" placeholder="Drop-off Location" />
                </div>
                <div class="search-box">
                    <input type="date" placeholder="Pick-up Date" />
                </div>
                <div class="search-box">
                    <input type="time" placeholder="Pick-up Time" />
                </div>
                <div class="search-box">
                    <input type="date" placeholder="Drop-off Date" />
                </div>
                <div class="search-box">
                    <input type="time" placeholder="Drop-off Time" />
                </div>
                <div class="search-box">
                    <select>
                        <option value="30-60">Driver's age: 30-60</option>
                        <option value="21-29">Driver's age: 21-29</option>
                        <option value="61+">Driver's age: 61+</option>
                    </select>
                </div>
                <div class="search-button">
                    <button type="button">Search</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Small About Section -->
    <div class="about-section">
        <h3>Cruize Control Rental Cars</h3>
        <p>Discover the Freedom to Explore!</p>
        <p>Take control of your journey. Drive with confidence. Drive with Cruize Control!</p>

        <!-- Links Section -->
        <div class="about-links">
            <a href="#">About Us</a>
            <a href="#">Contact Us</a>
            <a href="#">Privacy Policy</a>
            <a href="#">Terms & Conditions</a>
            <a href="#">Blog</a>
        </div>

        <!-- Divider Line -->
        <div class="divider"></div>

        <!-- Footer -->
        <div class="footer">
            © cruizecontrol.com <br />
            All Rights Reserved.
        </div>
    </div>
</asp:Content>
