using System;
using System.Data;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Atleticore
{
    public partial class TeamRegistration : System.Web.UI.Page
    {
        // Hardcoded player list
        public static DataTable dtPlayers;
        public static DataTable dtRegisteredTeams;
        public static DataTable dtAssignedPlayers;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initialize Players
                dtPlayers = new DataTable();
                dtPlayers.Columns.Add("Name");
                dtPlayers.Columns.Add("Age");
                dtPlayers.Columns.Add("Position");

                dtPlayers.Rows.Add("Pedri", "20", "Midfielder");
                dtPlayers.Rows.Add("Gavi", "19", "Midfielder");
                dtPlayers.Rows.Add("Kaka", "32", "Forward");
                dtPlayers.Rows.Add("Hardik", "25", "Defender");
                dtPlayers.Rows.Add("Sahal", "24", "Forward");
                dtPlayers.Rows.Add("Inas", "21", "Goalkeeper");

                gvPlayers.DataSource = dtPlayers;
                gvPlayers.DataBind();

                // Initialize Registered Teams
                dtRegisteredTeams = new DataTable();
                dtRegisteredTeams.Columns.Add("TeamName");
                dtRegisteredTeams.Columns.Add("Coach");
                dtRegisteredTeams.Columns.Add("Founded");
                dtRegisteredTeams.Columns.Add("TeamType");
                dtRegisteredTeams.Columns.Add("Players");

                gvRegisteredTeams.DataSource = dtRegisteredTeams;
                gvRegisteredTeams.DataBind();

                // Initialize Assigned Players
                dtAssignedPlayers = dtPlayers.Clone();
            }
        }

        protected void btnAssignPlayers_Click(object sender, EventArgs e)
        {
            // Clear previous assigned players
            dtAssignedPlayers.Clear();

            foreach (GridViewRow row in gvPlayers.Rows)
            {
                CheckBox cb = (CheckBox)row.FindControl("cbSelect");
                if (cb != null && cb.Checked)
                {
                    string name = row.Cells[1].Text;
                    string age = row.Cells[2].Text;
                    string pos = row.Cells[3].Text;

                    dtAssignedPlayers.Rows.Add(name, age, pos);
                }
            }

            if (dtAssignedPlayers.Rows.Count > 0)
            {
                string script = $"alert('✅ {dtAssignedPlayers.Rows.Count} player(s) assigned for the team.');";
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", script, true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "alert('Please select at least one player.');", true);
            }
        }

        protected void btnRegisterTeam_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtTeamName.Text) || string.IsNullOrEmpty(txtCoach.Text) || string.IsNullOrEmpty(txtFounded.Text) || string.IsNullOrEmpty(ddlTeamType.SelectedValue))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "alert('Please fill all team details.');", true);
                return;
            }

            if (dtAssignedPlayers.Rows.Count == 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "alert('Assign at least one player before registering the team.');", true);
                return;
            }

            // Combine player names into a string
            string playerNames = string.Join(", ", dtAssignedPlayers.AsEnumerable().Select(r => r.Field<string>("Name")));

            dtRegisteredTeams.Rows.Add(txtTeamName.Text, txtCoach.Text, txtFounded.Text, ddlTeamType.SelectedValue, playerNames);

            gvRegisteredTeams.DataSource = dtRegisteredTeams;
            gvRegisteredTeams.DataBind();

            // Clear inputs and assigned players
            txtTeamName.Text = "";
            txtCoach.Text = "";
            txtFounded.Text = "";
            ddlTeamType.SelectedIndex = 0;
            dtAssignedPlayers.Clear();

            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "alert('✅ Team registered successfully!');", true);
        }

        protected void btnMainField_Click(object sender, EventArgs e)
        {
            // Redirect to Dashboard
            Response.Redirect("Dashboard.aspx"); // Change this to your dashboard page
        }
    }
}