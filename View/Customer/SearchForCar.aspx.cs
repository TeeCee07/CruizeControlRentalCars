using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Services;

namespace CruizeControlRentalCars.View.Customer
{
    public partial class SearchForCar : System.Web.UI.Page
    {
        [WebMethod]
        public static List<string> GetLocationSuggestions(string searchTerm)
        {
            List<string> suggestions = new List<string>();

            // Get the connection string from the web.config
            string connectionString = ConfigurationManager.ConnectionStrings["cruise_control_rentalsEntities"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT DISTINCT Location FROM CAR WHERE Location LIKE @searchTerm + '%'";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@searchTerm", searchTerm);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    suggestions.Add(reader["Location"].ToString());
                }
                conn.Close();
            }

            return suggestions;
        }



        protected void btnSearch_Click(object sender, EventArgs e)
        {
            // Get the values from the inputs
            string pickupLocation = Request.Form["txtPickupLocation"];
            string dropoffLocation = Request.Form["txtDropoffLocation"];
            string pickupDate = Request.Form["pickupDate"];
            string pickupTime = Request.Form["pickupTime"];
            string dropoffDate = Request.Form["dropoffDate"];
            string dropoffTime = Request.Form["dropoffTime"];
            string driverAge = Request.Form["driverAge"];

            // Build the query string using Server.UrlEncode to encode the values
            string query = $"?pickupLocation={Server.UrlEncode(pickupLocation)}&dropoffLocation={Server.UrlEncode(dropoffLocation)}" +
                           $"&pickupDate={Server.UrlEncode(pickupDate)}&pickupTime={Server.UrlEncode(pickupTime)}" +
                           $"&dropoffDate={Server.UrlEncode(dropoffDate)}&dropoffTime={Server.UrlEncode(dropoffTime)}" +
                           $"&driverAge={Server.UrlEncode(driverAge)}";

            // Redirect to CarsView.aspx with query parameters
            Response.Redirect("CarsView.aspx" + query);
        }
    }
        
    
}

