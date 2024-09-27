
using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace CruizeControlRentalCars.View.Admin
{
    public partial class CarList : System.Web.UI.Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["cruise_control_rentalsEntities"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCarGridView();
            }
        }

        private void BindCarGridView()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT RegistrationNo, Car_Brand, Car_Make, YearMake, Color, Car_Daily_Rate, Available, ImagePath FROM CAR", con))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    gvCarList.DataSource = dt;
                    gvCarList.DataBind();
                }
            }
        }


        protected void gvCarList_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvCarList.EditIndex = e.NewEditIndex;
            BindCarGridView();
        }

        protected void gvCarList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string regNo = gvCarList.DataKeys[e.RowIndex].Value.ToString();

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

            BindCarGridView();
        }

        protected void gvCarList_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string regNo = gvCarList.DataKeys[e.RowIndex].Value.ToString();
            GridViewRow row = gvCarList.Rows[e.RowIndex];
            string brand = (row.FindControl("txtBrand") as TextBox).Text;
            string make = (row.FindControl("txtMake") as TextBox).Text;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE CAR SET Car_Brand = @Brand, Car_Make = @Make WHERE RegistrationNo = @RegNo", con))
                {
                    cmd.Parameters.AddWithValue("@Brand", brand);
                    cmd.Parameters.AddWithValue("@Make", make);
                    cmd.Parameters.AddWithValue("@RegNo", regNo);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            gvCarList.EditIndex = -1;
            BindCarGridView();
        }

        protected void gvCarList_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvCarList.EditIndex = -1;
            BindCarGridView();
        }
    }
}
