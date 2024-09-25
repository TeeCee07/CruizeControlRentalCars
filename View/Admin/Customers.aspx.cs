using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CruizeControlRentalCars.View.Admin
{
    public partial class Customers : System.Web.UI.Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["YourConnectionStringName"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCustomers();
            }
        }

        private void LoadCustomers()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT CustomerID, FirstName + ' ' + LastName AS Name, Email, PhoneNumber AS Phone, RentedCars FROM Customers", con))
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(reader);
                    if (dt.Rows.Count == 0)
                    {
                        // Check if dt is empty
                        Response.Write("No customers found.");
                    }
                    else
                    {
                        // Bind the data
                        gvCustomers.DataSource = dt;
                        gvCustomers.DataBind();
                    }

                    con.Close();
                }
            }
        }
    }
}