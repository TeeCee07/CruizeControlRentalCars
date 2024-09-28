using System;
using System.Web.Security;

namespace CruizeControlRentalCars.View.Customer
{
    public partial class CustomerMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            // Clear session or authentication cookies here
            Session.Clear(); // or Session.Abandon();
            Response.Redirect("Login.aspx");
        }

    }
}
