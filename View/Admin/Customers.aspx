<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="CruizeControlRentalCars.View.Admin.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    
        <style type="text/css">
        .auto-style2 {
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
        .auto-style3 {
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
            margin-left:-120px;

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
                        <div class="col"></div><img src="../../Assets/Img/car-png-39071.png" class="auto-style4" >
                </div>
                <div class="row">
                    <div class="col d-grid">
                        <form>
                            <div class="mb-3">
                              <label for="exampleInputEmail1" class="form-label">First Name</label>
                              <input type="text" class="auto-style3" id="txtFname" placeholder="Enter Your First Name" runat="server">

                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Last Name</label>
                                <input type="text" class="auto-style2" id="txtLname" placeholder="Enter Your Last Name" runat="server">
                                </div>

                              <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Model</label>
                                <input type="text" class="auto-style3" id="txtModel" placeholder="Enter Car Model" runat="server">
                               </div>

                              <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">CarDailyRate</label>
                                <input type="text" class="auto-style3" id="txtPrice" placeholder="Enter Car's Daily Rate" runat="server">
                                </div>

                              <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Color</label>
                                <input type="text" class="auto-style3" id="txtColor" placeholder="Enter Car Color" runat="server">
                                </div>

                              <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Available</label>
                                      <asp:DropDownList ID="ddlAvailable" runat="server">
                                          <asp:ListItem>Available</asp:ListItem>
                                          <asp:ListItem>Booked</asp:ListItem>
                                      </asp:DropDownList>
                                  
                                 </div>
                     <br />
                           <br/>
                           <div class="d-flex">
                                <button type="submit" class="btn btn-primary" style="width: 90px; margin-right: 5px;">Edit</button>
                                <button type="submit" class="btn btn-primary" style="width: 90px; margin-right: 5px;">Add</button>
                                <button type="submit" class="btn btn-primary" style="width: 90px;">Delete</button>
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

