using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    namespace CruizeControlRentalCars.View.Customer
    {
        public partial class CustomerMaster : MasterPage
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                // Get the current page name
                string currentPage = System.IO.Path.GetFileName(Request.Path);

                // Clear any existing controls from the navLinks placeholder
                navLinks.Controls.Clear();

                // Check if the current page is Login or Register
                if (currentPage == "Login.aspx" || currentPage == "Register.aspx")
                {
                    // Add "Admin Login" for login or register pages
                    navLinks.Controls.Add(new LiteralControl("<li class='nav-item'><a class='nav-link btn btn-light' href='AdminLogin.aspx'>Admin Login</a></li>"));
                }
                else
                {
                    // Add "Profile" and "Logout" for other pages
                    navLinks.Controls.Add(new LiteralControl("<li class='nav-item'><a class='nav-link' href='Profile.aspx'>My Profile</a></li>"));
                    navLinks.Controls.Add(new LiteralControl("<li class='nav-item'><a class='nav-link btn btn-light' href='Login.aspx'>Logout</a></li>"));
                }
            }
        }
    }
