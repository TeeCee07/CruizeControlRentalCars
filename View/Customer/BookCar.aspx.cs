using System;
using System.Data.SqlClient;
using System.Configuration;

namespace CruizeControlRentalCars.View.Customer
{
    public partial class BookCar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Assuming you are passing car details as query parameters
                txtCarRegNo.Text = Request.QueryString["carRegNo"];
                txtCarBrand.Text = Request.QueryString["carBrand"];
                txtCarMake.Text = Request.QueryString["carMake"];
                txtCarYearMake.Text = Request.QueryString["carYearMake"];
                txtCarColor.Text = Request.QueryString["carColor"];
                txtDailyRate.Text = Request.QueryString["dailyRate"];
            }
        }

        protected void btnConfirmBooking_Click(object sender, EventArgs e)
        {
            try
            {
                // Retrieve booking duration and daily rate
                int bookingDuration = int.Parse(txtBookingDuration.Text);
                decimal dailyRate = decimal.Parse(txtDailyRate.Text);

                // Calculate total price
                decimal totalPrice = bookingDuration * dailyRate;
                txtTotalPrice.Text = totalPrice.ToString("F2");

                // Insert booking details into the database
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["cruise_control_rentalsEntities"].ConnectionString))
                {
                    conn.Open();
                    string query = "INSERT INTO Bookings (CustomerName, CarRegNo, BookingDuration, TotalPrice) VALUES (@CustomerName, @CarRegNo, @BookingDuration, @TotalPrice)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@CustomerName", txtCustomerName.Text);
                        cmd.Parameters.AddWithValue("@CarRegNo", txtCarRegNo.Text);
                        cmd.Parameters.AddWithValue("@BookingDuration", bookingDuration);
                        cmd.Parameters.AddWithValue("@TotalPrice", totalPrice);

                        cmd.ExecuteNonQuery();
                    }

                    // Update the car status to 'Booked' in the Cars table
                    string updateQuery = "UPDATE Cars SET IsAvailable = 0 WHERE CarRegNo = @CarRegNo";
                    using (SqlCommand cmdUpdate = new SqlCommand(updateQuery, conn))
                    {
                        cmdUpdate.Parameters.AddWithValue("@CarRegNo", txtCarRegNo.Text);
                        cmdUpdate.ExecuteNonQuery();
                    }
                }

                // Display success message
                Response.Write("<script>alert('Booking confirmed successfully!');</script>");
            }
            catch (Exception ex)
            {
                // Handle exception
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}
