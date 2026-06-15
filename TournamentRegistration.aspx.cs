using System;
using System.Data;
using System.Web.UI;

namespace Atleticore
{
    public partial class TournamentRegistration : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTournaments();
            }
        }

        private void BindTournaments()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Name");
            dt.Columns.Add("Venue");
            dt.Columns.Add("Fee");
            dt.Columns.Add("ImageUrl");

            dt.Rows.Add("Summer Cup", "Mumbai", "10000", "Images/img1.jpg");
            dt.Rows.Add("Winter League", "Delhi", "12000", "Images/img2.jpg");
            dt.Rows.Add("Champions Trophy", "Bangalore", "15000", "Images/img3.jpg");
            dt.Rows.Add("City Cup", "Chennai", "7000", "Images/img4.jpg");
            dt.Rows.Add("National League", "Kolkata", "5000", "Images/img5.jpg");
            dt.Rows.Add("Premier Cup", "Pune", "3000", "Images/img6.jpg");

            rptTournaments.DataSource = dt;
            rptTournaments.DataBind();
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            // Simple alert for payment
            string script = "alert('✅ Payment Done Successfully!');";
            ClientScript.RegisterStartupScript(this.GetType(), "PaymentAlert", script, true);
        }

        protected void btnMainField_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx"); // Replace with your main dashboard page
        }
    }
}