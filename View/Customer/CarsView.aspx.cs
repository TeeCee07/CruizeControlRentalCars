using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace CruizeControlRentalCars.View.Customer
{
    public partial class CarsView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve the query string values
                string pickupLocation = Request.QueryString["pickupLocation"];
                string dropoffLocation = Request.QueryString["dropoffLocation"];
                string startDate = Request.QueryString["startDate"];
                string startTime = Request.QueryString["startTime"];
                string endDate = Request.QueryString["endDate"];
                string endTime = Request.QueryString["endTime"];

                // Populate the rental details section
                if (!string.IsNullOrEmpty(pickupLocation) && !string.IsNullOrEmpty(dropoffLocation))
                {
                    rentalDetailsLiteral.Text = $"<strong>Location:</strong> {pickupLocation} <br />" +
                                                $"<strong>Rental Start Date:</strong> {startDate} <br />" +
                                                $"<strong>Rental End Date:</strong> {endDate} <br />" +
                                                $"<strong>Times:</strong> {startTime} to {endTime}";
                }

                // Now bind the cars to the Repeater based on the pickup location
                BindCarData(pickupLocation);
            }
        }

        // Method to fetch and bind car data
        private void BindCarData(string pickupLocation)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["cruise_control_rentalsEntities"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM CAR WHERE Location = @pickupLocation";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@pickupLocation", pickupLocation);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                RepeaterCars.DataSource = reader;
                RepeaterCars.DataBind();
            }
        }

        // OnClick event handler for booking a car
        protected void BookVehicle(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string registrationNo = btn.CommandArgument;

            // Redirect to a booking page or handle booking logic
            Response.Redirect($"BookingPage.aspx?registrationNo={registrationNo}");
        }
    }
}
