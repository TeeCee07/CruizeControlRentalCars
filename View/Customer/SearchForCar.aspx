<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="SearchForCar.aspx.cs" Inherits="CruizeControlRentalCars.View.Customer.SearchForCar" %>

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

        .search-box {
            position: relative;
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

        .autocomplete-suggestions {
            position: absolute;
            top: 100%;
            left: 0;
            right: 0;
            border: 1px solid #ccc;
            background-color: white;
            max-height: 150px;
            overflow-y: auto;
            z-index: 1000;
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .autocomplete-suggestions li {
            padding: 10px;
            cursor: pointer;
        }

        .autocomplete-suggestions li:hover {
            background-color: #f0f0f0;
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
    </style>

    <div class="content-wrapper">
        <div class="container">
            <!-- Search Fields -->
            <div class="search-box">
                <input type="text" id="txtPickupLocation" placeholder="Pick-up Location" />
                <ul id="pickupSuggestions" class="autocomplete-suggestions"></ul>
            </div>
            <div class="search-box">
                <input type="text" id="txtDropoffLocation" placeholder="Drop-off Location" />
                <ul id="dropoffSuggestions" class="autocomplete-suggestions"></ul>
            </div>

            <!-- Other Fields -->
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

            <!-- Search Button -->
            <div class="search-button">
                <button type="button">Search</button>
            </div>
        </div>
    </div>

    <!-- jQuery CDN -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- jQuery Autocomplete Script -->
    <script type="text/javascript">
        $(document).ready(function () {
            // Pickup Location Autocomplete
            $('#txtPickupLocation').on('keyup', function () {
                var query = $(this).val();
                if (query.length >= 2) {
                    $.ajax({
                        type: "POST",
                        url: "SearchForCar.aspx/GetLocationSuggestions",
                        data: JSON.stringify({ searchTerm: query }),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (response) {
                            var suggestions = response.d;
                            var suggestionsList = $('#pickupSuggestions');
                            suggestionsList.empty();
                            if (suggestions.length > 0) {
                                $.each(suggestions, function (index, suggestion) {
                                    suggestionsList.append('<li>' + suggestion + '</li>');
                                });
                            } else {
                                suggestionsList.append('<li>No results found</li>');
                            }
                        }
                    });
                }
            });

            // Dropoff Location Autocomplete
            $('#txtDropoffLocation').on('keyup', function () {
                var query = $(this).val();
                if (query.length >= 2) {
                    $.ajax({
                        type: "POST",
                        url: "SearchForCar.aspx/GetLocationSuggestions",
                        data: JSON.stringify({ searchTerm: query }),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (response) {
                            var suggestions = response.d;
                            var suggestionsList = $('#dropoffSuggestions');
                            suggestionsList.empty();
                            if (suggestions.length > 0) {
                                $.each(suggestions, function (index, suggestion) {
                                    suggestionsList.append('<li>' + suggestion + '</li>');
                                });
                            } else {
                                suggestionsList.append('<li>No results found</li>');
                            }
                        }
                    });
                }
            });

            // Pickup Location Selection
            $(document).on('click', '#pickupSuggestions li', function () {
                $('#txtPickupLocation').val($(this).text());
                $('#pickupSuggestions').empty(); // Clear suggestions after selection
            });

            // Dropoff Location Selection
            $(document).on('click', '#dropoffSuggestions li', function () {
                $('#txtDropoffLocation').val($(this).text());
                $('#dropoffSuggestions').empty(); // Clear suggestions after selection
            });
        });
    </script>
</asp:Content>
