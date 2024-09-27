using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web;
using System.Web.UI;

namespace CruizeControlRentalCars.View.Customer
{
    public partial class MyRentals : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["CustomerID"] == null)
                {
                    // Redirect to login 
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    BindRentalHistory();  
                }
            }
        }

        private void BindRentalHistory()
        {
            string connectionString =  ConfigurationManager.ConnectionStrings["cruise_control_rentalsEntities"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = @"SELECT BookingID as RentalID, CarID as CarName, Start_BookingDate as PickupDate, 
                            End_BookingsDate as ReturnDate, Rental_Cost as Price, 
                            CASE 
                                WHEN GETDATE() > End_BookingsDate THEN 'Completed' 
                                ELSE 'Active' 
                            END as Status 
                            FROM BOOKING 
                            WHERE customerID = @CustomerID;";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@CustomerID", HttpContext.Current.Session["CustomerID"]);

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);

                        if (dt.Rows.Count > 0)
                        {
                            gvRentalHistory.DataSource = dt;  
                            gvRentalHistory.DataBind();
                            lblMessage.Visible = false;  
                        }
                        else
                        {
                            gvRentalHistory.DataSource = null;  
                            gvRentalHistory.DataBind();
                            lblMessage.Text = "No rental history found.";
                            lblMessage.Visible = true;  
                        }
                    }
                }
            }
        }

    }
}
