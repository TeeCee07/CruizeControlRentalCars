using System;
using System.Net.Mail;
using System.Xml.Linq;

namespace CruizeControlRentalCars.View.Customer
{
    public partial class QueryPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblConfirmation.Visible = false; // Hide confirmation message on page load
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Retrieve the form data
            string name = txtName.Text;
            string email = txtEmail.Text;
            string queryType = ddlQueryType.SelectedValue;
            string message = txtMessage.Text;

            try
            {
                // Send query details to email (or save in the database if needed)
                SendEmail(name, email, queryType, message);

                // Show confirmation message
                lblConfirmation.Text = "Thank you for submitting your query! We'll get back to you shortly.";
                lblConfirmation.Visible = true;

                // Clear the form fields
                txtName.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtMessage.Text = string.Empty;
                ddlQueryType.SelectedIndex = 0;
            }
            catch (Exception ex)
            {
                // Handle any errors
                lblConfirmation.Text = "There was an error submitting your query. Please try again later.";
                lblConfirmation.Visible = true;
            }
        }

        private void SendEmail(string name, string email, string queryType, string message)
        {
            MailMessage mail = new MailMessage();
            mail.To.Add("support@cruizecontrol.com");
            mail.From = new MailAddress(email);
            mail.Subject = $"New Query: {queryType}";
            mail.Body = $"Name: {name}\nEmail: {email}\nQuery Type: {queryType}\nMessage: {message}";

            SmtpClient smtp = new SmtpClient
            {
                Host = "smtp.yourserver.com", // Replace with your SMTP server
                Port = 587, // Use appropriate port for your SMTP
                Credentials = new System.Net.NetworkCredential("yourEmail@domain.com", "yourPassword"),
                EnableSsl = true
            };
            smtp.Send(mail);
        }
    }
}
