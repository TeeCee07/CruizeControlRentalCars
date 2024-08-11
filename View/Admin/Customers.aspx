<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="CruizeControlRentalCars.View.Admin.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    
    <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="row">
                        <div class="col"></div>
                        <div class="col">
                            <h3 class="text-black pe-lg-4">Manage Customers</h3>
                        <div class="col">img here</div>
                        <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col d-grid">
                        <form  >
                            <div class="mb-3">
                              <label for="exampleInputEmail1" class="form-label">Customer's First Name</label>
                              <input type="text" class="auto-style3" id="txtFname" placeholder="Enter Customer's First Name" runat="server">

                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Customer's Last Name</label>
                                <input type="text" class="auto-style2" id="txtLname" placeholder="Enter Customer's First Name" runat="server">
                                </div>

                              <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Customer Address</label>
                                <input type="text" class="auto-style3" id="txtAddress" placeholder="Enter Customer's Address" runat="server">
                               </div>

                              <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Phone Number</label>
                                <input type="text" class="auto-style3" id="txtPhoneNo" placeholder="Enter Customer's Phone Number" runat="server">
                                </div>

                              <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Licence Number</label>
                                <input type="text" class="auto-style3" id="txtLicenceNo" placeholder="Enter Cistomer's LicenceNo"runat="server">
                                </div>

                            
                           <br />
                            <button type="submit" class="btn btn-primary" id="btnEdit">Edit</button>
                            <button type="submit" class="btn btn-primary" id="btnAdd">Add</button>
                            <button type="submit" class="btn btn-primary" id="btnDelete">Delete</button>
                          </form>

                    </div>
                    </div>
                </div>
            <div class="col-md-8"></div>
            <table class="table">

                
            </table>
        </div>
        </div>
    </div>
</asp:Content>

