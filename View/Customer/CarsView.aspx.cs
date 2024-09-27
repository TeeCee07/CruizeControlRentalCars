using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace CruizeControlRentalCars.View.Customer
{
    public partial class CarsView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCars();
            }
        }

        private void LoadCars()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["cruise_control_rentalsEntities"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT RegistrationNo, Car_Brand, Car_Make, YearMake, Car_Daily_Rate, Car_Capacity, Transmission, ImagePath FROM CAR WHERE Available = 'Yes'";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    try
                    {
                        con.Open();
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        // Check if the DataTable has rows
                        if (dt.Rows.Count > 0)
                        {
                            RepeaterCars.DataSource = dt;
                            RepeaterCars.DataBind();
                        }
                        else
                        {
                            System.Diagnostics.Debug.WriteLine("No cars available.");
                            
                        }
                    }

                    catch (Exception ex)
                    {
                        // Handle exception (log it, show a message, etc.)
                        System.Diagnostics.Debug.WriteLine("Error: " + ex.Message);
                    }
                }
            }
        }

        protected void BookVehicle(object sender, EventArgs e)
        {
            string registrationNo = (sender as Button).CommandArgument;

            // Redirect to the booking page with the selected car's registration number
            Response.Redirect($"BookCar.aspx?regNo={registrationNo}");
        }
    }
}
