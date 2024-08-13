<%@ Page Title="Car Rental Home" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CruizeControlRentalCars.View.Admin.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <style type="text/css">
        body {
            background-image: url('../../Assets/Img/pic3.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            font-family: Arial, sans-serif;
        }

        .page-container {
            margin: 20px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }

        .search-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .search-box {
            width: 23%;
        }

        .search-box input {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .car-container {
            position: relative;
            width: 100%;
            overflow: hidden;
        }

        .car-grid {
            display: flex;
            gap: 20px;
            transition: transform 0.3s ease-in-out;
            width: max-content;
        }

        .car-card {
            background-color: #fff;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 250px;
            flex-shrink: 0;
            min-height: 200px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .car-card img {
            width: 100%;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .car-card h4 {
            margin: 10px 0;
            font-size: 1.2em;
            color: #333;
        }

        .car-card p {
            margin: 5px 0;
            color: #777;
        }

        .car-card .rent-now {
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
        }

        .car-card.empty {
            background-color: #f0f0f0;
            border: 2px dashed #ccc;
            color: #999;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .arrow-container {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            width: 40px;
            height: 40px;
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            border-radius: 50%;
            z-index: 100;
        }

        .arrow-container.right {
            right: 10px;
        }

        .arrow-container.left {
            left: 10px;
            display: none; /* Hide left arrow initially */
        }
    </style>

    <div class="page-container">
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
                <input type="date" placeholder="Drop-off Date" />
            </div>
        </div>

        <div class="car-container">
            <div class="arrow-container left" onclick="scrollCars(-1)">&#10094;</div>
            <div class="car-grid" id="carGrid">
                <!-- Car cards will be injected here -->
                <div class="car-card empty">
                    <p>No cars available</p>
                </div>
                <div class="car-card empty">
                    <p>No cars available</p>
                </div>
                <div class="car-card empty">
                    <p>No cars available</p>
                </div>
                <div class="car-card empty">
                    <p>No cars available</p>
                </div>
                <!-- Add more empty placeholders as needed -->
            </div>
            <div class="arrow-container right" onclick="scrollCars(1)">&#10095;</div>
        </div>
    </div>

    <script type="text/javascript">
        let currentIndex = 0;
        const carsToShow = 4;
        const carGrid = document.getElementById('carGrid');
        const carCards = carGrid.children;
        const leftArrow = document.querySelector('.arrow-container.left');
        const rightArrow = document.querySelector('.arrow-container.right');

        function scrollCars(direction) {
            currentIndex += direction;

            if (currentIndex <= 0) {
                currentIndex = 0;
                leftArrow.style.display = 'none';
            } else {
                leftArrow.style.display = 'flex';
            }

            if (currentIndex >= carCards.length - carsToShow) {
                currentIndex = carCards.length - carsToShow;
                rightArrow.style.display = 'none';
            } else {
                rightArrow.style.display = 'flex';
            }

            const carWidth = carCards[0].offsetWidth + 20; // 20 is the gap between cards
            carGrid.style.transform = `translateX(${-currentIndex * carWidth}px)`;
        }

        // Initialize the arrows visibility
        scrollCars(0);
    </script>
</asp:Content>
