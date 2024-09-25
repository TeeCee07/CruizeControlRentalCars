using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;

namespace CruizeControlRentalCars.View.Admin
{
    public partial class Customers : System.Web.UI.Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["YourConnectionStringName"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Validate password match
            if (txtPassword.Text != txtConfirmPassword.Text)
            {
                lblError.Text = "Passwords do not match.";
                lblError.Visible = true;
                return;
            }

            // Hash the password
            string hashedPassword = HashPassword(txtPassword.Text);

            // Insert customer details into the database
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Customers (FirstName, LastName, PhoneNumber, Email, Password) VALUES (@FirstName, @LastName, @PhoneNumber, @Email, @Password)", con))
                {
                    cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                    cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
                    cmd.Parameters.AddWithValue("@PhoneNumber", txtPhoneNumber.Text);
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@Password", hashedPassword);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            // Clear the input fields after registration
            ClearInputs();
            lblError.Text = "Registration successful!";
            lblError.ForeColor = System.Drawing.Color.Green;
            lblError.Visible = true; 
        }

        private string HashPassword(string password)
        {
            // Generate a random salt
            using (var rng = new RNGCryptoServiceProvider())
            {
                byte[] salt = new byte[16];
                rng.GetBytes(salt);

                // Use PBKDF2 to hash the password
                using (var pbkdf2 = new Rfc2898DeriveBytes(password, salt, 10000)) // 10,000 iterations
                {
                    byte[] hash = pbkdf2.GetBytes(20); // Get a 20-byte hash

                    // Combine salt and hash
                    byte[] hashBytes = new byte[36];
                    Array.Copy(salt, 0, hashBytes, 0, 16);
                    Array.Copy(hash, 0, hashBytes, 16, 20);

                    // Convert to base64 string
                    return Convert.ToBase64String(hashBytes);
                }
            }
        }

        private void ClearInputs()
        {
            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtPhoneNumber.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtConfirmPassword.Text = string.Empty;
            lblError.Visible = false; // Hide error message after clearing inputs
        }
    }
}
