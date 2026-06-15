using System;
using System.Data;
using System.Web.UI;

namespace Atleticore
{
    public partial class PlayerRegistration : System.Web.UI.Page
    {
        public static DataTable dtPlayers;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dtPlayers = new DataTable();
                dtPlayers.Columns.Add("Name");
                dtPlayers.Columns.Add("Age");
                dtPlayers.Columns.Add("DOB");
                dtPlayers.Columns.Add("Position");
                dtPlayers.Columns.Add("Team");
                dtPlayers.Columns.Add("Jersey");
                dtPlayers.Columns.Add("Role");
                dtPlayers.Columns.Add("Status");
                dtPlayers.Columns.Add("Skills");

                gvPlayers.DataSource = dtPlayers;
                gvPlayers.DataBind();
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string status = rblActive.Checked ? "Active" :
                            rblInjured.Checked ? "Injured" :
                            rblSuspended.Checked ? "Suspended" : "";

            string skills = "";
            if (cbPassing.Checked) skills += "Passing, ";
            if (cbShooting.Checked) skills += "Shooting, ";
            if (cbDefending.Checked) skills += "Defending, ";
            if (cbGoalkeeping.Checked) skills += "Goalkeeping, ";
            skills = skills.TrimEnd(',', ' ');

            dtPlayers.Rows.Add(
                txtName.Text.Trim(),
                txtAge.Text.Trim(),
                txtDOB.Text,
                ddlPosition.SelectedValue,
                ddlTeam.SelectedValue,
                txtJersey.Text.Trim(),
                ddlRole.SelectedValue,
                status,
                skills
            );

            gvPlayers.DataSource = dtPlayers;
            gvPlayers.DataBind();

            // Popup alert
            string script = $"alert('✅ Player {txtName.Text} registered successfully!');";
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", script, true);

            ClearForm();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            ClearForm();
        }

        private void ClearForm()
        {
            txtName.Text = "";
            txtAge.Text = "";
            txtDOB.Text = "";
            txtJersey.Text = "";
            rblActive.Checked = false;
            rblInjured.Checked = false;
            rblSuspended.Checked = false;
            cbPassing.Checked = false;
            cbShooting.Checked = false;
            cbDefending.Checked = false;
            cbGoalkeeping.Checked = false;
        }

        protected void btnMainField_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx"); // Replace with your actual dashboard page
        }
    }
}