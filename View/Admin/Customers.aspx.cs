using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using Org.BouncyCastle.Tls;
using static System.Net.Mime.MediaTypeNames;

namespace CruizeControlRentalCars.View.Admin
{
    public partial class Customers : System.Web.UI.Page
    {
        // Retrieve the connection string from Web.config using its name
        private readonly string connectionString = ConfigurationManager.ConnectionStrings["cruise_control_rentalsEntities"].ConnectionString;

        // Single Page_Load method
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Call the method to load customers
                LoadCustomers();
            }
        }

        private void LoadCustomers()
        {
            // Using block ensures proper disposal of SqlConnection
            using (SqlConnection con = new SqlConnection(@"Data Source =.; User ID = sa; Password = ********; Connect Timeout = 30; Encrypt = True; Trust Server Certificate = True; Application Intent = ReadWrite; Multi Subnet Failover = False"))
            {
                // SQL query to fetch customer details
                using (SqlCommand cmd = new SqlCommand("SELECT CustomerID, FirstName + ' ' + LastName AS Name, Email, PhoneNumber AS Phone, RentedCars FROM Customers", con))
                {
                    con.Open();

                    // Execute the query and load the data into a DataTable
                    SqlDataReader reader = cmd.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(reader);

                    // Bind the GridView only if data is available
                    if (dt.Rows.Count > 0)
                    {
                        gvCustomers.DataSource = dt;
                        gvCustomers.DataBind();
                    }
                    else
                    {
                        // Handle case where no customers are found
                        gvCustomers.DataSource = null;
                        gvCustomers.DataBind();
                    }

                    con.Close();
                }
            }
        }
    }
}
