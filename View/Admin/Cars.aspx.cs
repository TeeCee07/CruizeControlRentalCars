using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;

namespace CruizeControlRentalCars.View.Admin
{
    public partial class Cars : Page
    {
        private string connectionString = "VONANI;Initial Catalog=Cruize_Control_Car_Rentals;Integrated Security=True;Encrypt=True;Trust Server Certificate=True"; // Update with your actual connection string

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
                string filePath = Server.MapPath("~/Assets/Images/") + fileUpload.FileName; // Specify the folder where images will be stored
                fileUpload.SaveAs(filePath); // Save the uploaded file

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO Cars (RegistrationNumber, Brand, Make, YearMake, Color, DailyRate, Available, ImagePath) VALUES (@RegNo, @Brand, @Make, @YearMake, @Color, @DailyRate, @Available, @ImagePath)", con))
                    {
                        cmd.Parameters.AddWithValue("@RegNo", txtRegNo.Text);
                        cmd.Parameters.AddWithValue("@Brand", txtBrand.Text);
                        cmd.Parameters.AddWithValue("@Make", txtMake.Text);
                        cmd.Parameters.AddWithValue("@YearMake", txtYearMake.Text);
                        cmd.Parameters.AddWithValue("@Color", txtColor.Text);
                        cmd.Parameters.AddWithValue("@DailyRate", txtPrice.Text);
                        cmd.Parameters.AddWithValue("@Available", ddlAvailable.SelectedValue);
                        cmd.Parameters.AddWithValue("@ImagePath", fileUpload.FileName);

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
                using (SqlCommand cmd = new SqlCommand("UPDATE Cars SET Brand = @Brand, Make = @Make, YearMake = @YearMake, Color = @Color, DailyRate = @DailyRate, Available = @Available WHERE RegistrationNumber = @RegNo", con))
                {
                    cmd.Parameters.AddWithValue("@RegNo", regNo);
                    cmd.Parameters.AddWithValue("@Brand", txtBrand.Text);
                    cmd.Parameters.AddWithValue("@Make", txtMake.Text);
                    cmd.Parameters.AddWithValue("@YearMake", txtYearMake.Text);
                    cmd.Parameters.AddWithValue("@Color", txtColor.Text);
                    cmd.Parameters.AddWithValue("@DailyRate", txtPrice.Text);
                    cmd.Parameters.AddWithValue("@Available", ddlAvailable.SelectedValue);

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
                using (SqlCommand cmd = new SqlCommand("DELETE FROM Cars WHERE RegistrationNumber = @RegNo", con))
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
                using (SqlCommand cmd = new SqlCommand("SELECT RegistrationNumber, Brand, Make, YearMake, Color, DailyRate, Available, ImagePath FROM Cars", con))
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
            ddlAvailable.SelectedIndex = 0;
        }
    }
}
