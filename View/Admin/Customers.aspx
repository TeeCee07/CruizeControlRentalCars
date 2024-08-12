<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="CruizeControlRentalCars.View.Admin.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    
        <style type="text/css">
     body {
         background-image: url('../../Assets/Img/BRABUS%20Rocket%20900%20grey.jpg');
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
         -webkit-appearance: none;
         -moz-appearance: none;
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
 </style>
    
    <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="row">
                        <div class="col"></div>
                        <div class="col">
                            <h3 class="auto-style5">Register</h3>
                        <div class="col"></div>
                        <div class="col"></div><img src="../../Assets/Img/Person.png"  class="auto-style4" /> 
                </div>
                <div class="row">
                    <div class="col d-grid">
                        <form>
                            <div class="mb-3">
                              <label for="exampleInputEmail1" class="form-label">First Name</label>
                              <input type="text" class="auto-style3" id="txtFname" placeholder="Enter Your First Name" runat="server"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="Required!!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
                            &nbsp;</div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Last Name</label>
                                <input type="text" class="auto-style2" id="txtLname" placeholder="Enter Your Last Name" runat="server"><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter A Valid Password!!!" Font-Italic="True" ForeColor="#999999" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;</div>

                              <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Phone Number</label>
                                <input type="text" class="auto-style3" id="txtPhoneNo" placeholder="Enter Your Phone Number" runat="server"><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="Required!!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
                            &nbsp;</div>

                              <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Email Address</label>
                                <input type="text" class="auto-style3" id="txtEmail" placeholder="Enter Your Email Address" runat="server"><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter A Valid Email Address!!!" Font-Italic="True" ForeColor="#999999" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;</div>

                              <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Password</label>
                                <input type="text" class="auto-style3" id="txtPassword" placeholder="Enter Your Password" runat="server"><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter A Valid Password" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
                            &nbsp;</div>
                              <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Confirm Password</label>
                                <input type="text" class="auto-style3" id="txtConfirm" placeholder="Confirm Your Password" runat="server"><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtConfirm" ErrorMessage="Confirm Your Password!!!" Font-Italic="True" ForeColor="#999999"></asp:RequiredFieldValidator>
                            &nbsp;</div>
                             <div class="d-flex">
                                <button type="submit" class="btn btn-primary" style="width: 90px; margin-right: 5px;" id="btnSubmit">Submit</button>
                                 </div>

                           
                          </form>

                    </div>
                    </div>
                </div>
                    </div>
            <div class="col-md-8"></div>
            <table class="table">

                
            </table>
        </div>
        </div>
</asp:Content>

