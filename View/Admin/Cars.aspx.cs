using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CruizeControlRentalCars.View.Admin
{
    public partial class Cars : Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["cruise_control_rentalsEntities"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
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
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO CAR (RegistrationNo, Car_Capacity, Car_Brand, Car_Make,Transmission, YearMake, Color,  Car_Daily_Rate, Mileage, Available, ImagePath) VALUES (@RegNo, @Capacity, @Brand, @Make, @Transmission, @YearMake, @Color, @DailyRate, @Mileage, @Available, @ImagePath)", con))
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

                // Clear inputs and rebind grid
                ClearInputs();
                BindGridView();
            }
            else
            {
                // Handle case where no file is uploaded
                lblError.Text = "Please upload a car picture."; // Display error message
            }
        }

        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            string regNo = txtRegNo.Text; 

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE CAR SET Mileage = @Mileage, Car_Daily_Rate = @DailyRate, Available = @Available WHERE RegistrationNo = @RegNo", con))
                {
                    //cmd.Parameters.AddWithValue("@RegNo", regNo);
                   // cmd.Parameters.AddWithValue("@Brand", txtBrand.Text);
                    //cmd.Parameters.AddWithValue("@Make", txtMake.Text);
                   // cmd.Parameters.AddWithValue("@YearMake", txtYearMake.Text);
                    cmd.Parameters.AddWithValue("@Mileage", txtMileage.Text);
                    cmd.Parameters.AddWithValue("@DailyRate", txtPrice.Text);
                    cmd.Parameters.AddWithValue("@Available", ddlAvailable.SelectedItem);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            ClearInputs();
            BindGridView();
        }


        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            string regNo = txtRegNo.Text; 

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM CAR WHERE RegistrationNo = @RegNo", con))
                {
                    cmd.Parameters.AddWithValue("@RegNo", regNo);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            ClearInputs();
            BindGridView();
        }

        private void BindGridView()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT RegistrationNo, Car_Brand, Car_Make, BookingID, Car_Capacity, YearMake, Color, Transmission, Car_Daily_Rate, Available, ImagePath FROM CAR", con))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    gvCars.DataSource = dt;
                    gvCars.DataBind();
                }
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
        }
    }
}
