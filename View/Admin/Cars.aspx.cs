using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace CruizeControlRentalCars.View.Admin
{
    public partial class Cars : Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["cruise_control_rentalsEntities"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            // Check if file is uploaded
            if (fileUpload.HasFile)
            {
                string filePath = Server.MapPath("~/Assets/Img/") + fileUpload.FileName; // Specify the folder where images will be stored
                fileUpload.SaveAs(filePath); // Save the uploaded file

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO CAR (RegistrationNo, Car_Capacity, Car_Brand, Car_Make, Transmission, YearMake, Color, Car_Daily_Rate, Mileage, Available, ImagePath) VALUES (@RegNo, @Capacity, @Brand, @Make, @Transmission, @YearMake, @Color, @DailyRate, @Mileage, @Available, @ImagePath)", con))
                    {
                        cmd.Parameters.AddWithValue("@RegNo", txtRegNo.Text);
                        cmd.Parameters.AddWithValue("@Brand", txtBrand.Text);
                        cmd.Parameters.AddWithValue("@Transmission", ddlTransmission.SelectedValue);
                        cmd.Parameters.AddWithValue("@Make", txtMake.Text);
                        cmd.Parameters.AddWithValue("@Capacity", txtCapacity.Text);
                        cmd.Parameters.AddWithValue("@YearMake", txtYearMake.Text);
                        cmd.Parameters.AddWithValue("@Color", txtColor.Text);
                        cmd.Parameters.AddWithValue("@DailyRate", txtPrice.Text);
                        cmd.Parameters.AddWithValue("@Available", ddlAvailable.SelectedValue);
                        cmd.Parameters.AddWithValue("@ImagePath", fileUpload.FileName);
                        cmd.Parameters.AddWithValue("@Mileage", txtMileage.Text);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        
                    }
                }

                // Clear inputs after adding a vehicle
                ClearInputs();
            }
            else
            {
                // Handle case where no file is uploaded
                lblError.Text = "Please upload a car picture."; // Display error message
            }
        }

        private void ClearInputs()
        {
            txtRegNo.Text = string.Empty;
            txtBrand.Text = string.Empty;
            txtMake.Text = string.Empty;
            txtYearMake.Text = string.Empty;
            txtColor.Text = string.Empty;
            txtPrice.Text = string.Empty;
            ddlTransmission.SelectedIndex = 0;
            ddlAvailable.SelectedIndex = 0;
            txtMileage.Text = string.Empty;
            txtCapacity.Text = string.Empty;
        }
    }
}
