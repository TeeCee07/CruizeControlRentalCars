using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CruizeControlRentalCars.View.Admin
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            // Check if the user is an admin
            if (IsAdmin(email, password))
            {
                // Redirect to admin page
                Response.Redirect("~/View/Admin/Cars.aspx");
            }
            else
            {
                // Check if the user is a customer
                if (IsValidCustomer(email, password))
                {
                    // Redirect to customer dashboard
                    Response.Redirect("~/View/Customer/CarSearch.aspx");
                }
                else
                {
                    // Display error message for invalid credentials
                    Response.Write("<script>alert('Invalid credentials. Please try again.');</script>");
                }
            }
        }

        private bool IsAdmin(string email, string password)
        {
            // Replace these with your actual admin credentials
            string adminUsername = "admin@11.com";
            string adminPassword = "123454321";

            return email.Equals(adminUsername, StringComparison.OrdinalIgnoreCase) && password == adminPassword;
        }

        private bool IsValidCustomer(string email, string password)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["YourConnectionString"].ConnectionString))
            {
                conn.Open();
                string query = "SELECT COUNT(1) FROM Customers WHERE Email = @Email AND Password = @Password";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password); // Consider hashing passwords

                int count = (int)cmd.ExecuteScalar();
                return count == 1;
            }
        }
    }
}