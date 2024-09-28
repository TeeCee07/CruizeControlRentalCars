<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="QueryPage.aspx.cs" Inherits="CruizeControlRentalCars.View.Customer.QueryPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mybody2" runat="server">
    
    <style type="text/css">
        body {
            background-image: url('../../Assets/Img/QueryBackground.png');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            height: 100vh;
        }

        .query-container {
            margin: 50px auto;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.9);
            max-width: 600px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }

        .query-container h1 {
            font-size: 28px;
            margin-bottom: 20px;
            text-align: center;
            color: #007BFF;
        }

        .query-container form {
            display: flex;
            flex-direction: column;
        }

        .query-container label {
            margin-bottom: 10px;
            font-weight: bold;
        }

        .query-container input[type="text"],
        .query-container input[type="email"],
        .query-container select,
        .query-container textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .query-container button {
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        .query-container button:hover {
            background-color: #0056b3;
        }
    </style>

    <div class="query-container">
        <h1>Submit Your Query</h1>
        <p>If you have any questions, concerns, or feedback, please fill out the form below, and we’ll get back to you as soon as possible.</p>

        <asp:Panel ID="PanelQueryForm" runat="server">
            <form>
                <label for="name">Name:</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter your full name"></asp:TextBox>

                <label for="Contact">Contact:</label>
                <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" placeholder="Enter your Contact number"></asp:TextBox>
                     <label for="email">Email:</label>
                      <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email" TextMode="Email"></asp:TextBox>

                <label for="queryType">Query Type:</label>
                <asp:DropDownList ID="ddlQueryType" runat="server" CssClass="form-control">
                    <asp:ListItem Text="General Inquiry" Value="General Inquiry"></asp:ListItem>
                    <asp:ListItem Text="Booking Issue" Value="Booking Issue"></asp:ListItem>
                    <asp:ListItem Text="Feedback" Value="Feedback"></asp:ListItem>
                    <asp:ListItem Text="Complaint" Value="Complaint"></asp:ListItem>
                </asp:DropDownList>

                <label for="message">Message:</label>
                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" placeholder="Enter your message"></asp:TextBox>

                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
            </form>
        </asp:Panel>

        <asp:Label ID="lblConfirmation" runat="server" Visible="false" CssClass="confirmation-message"></asp:Label>
    </div>

</asp:Content>
