using System;
using System.Data;
using System.Web.UI;

namespace Atleticore
{
    public partial class ScoreEntry : Page
    {
        // Use ViewState to store scores
        private DataTable ScoreTable
        {
            get
            {
                if (ViewState["ScoreTable"] == null)
                {
                    DataTable dt = new DataTable();
                    dt.Columns.Add("MatchDate");
                    dt.Columns.Add("TeamA");
                    dt.Columns.Add("ScoreA");
                    dt.Columns.Add("TeamB");
                    dt.Columns.Add("ScoreB");
                    dt.Columns.Add("Venue");
                    ViewState["ScoreTable"] = dt;
                }
                return (DataTable)ViewState["ScoreTable"];
            }
            set { ViewState["ScoreTable"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            gvScores.DataSource = ScoreTable;
            gvScores.DataBind();
        }

        protected void btnSubmitScore_Click(object sender, EventArgs e)
        {
            if (ddlTeamA.SelectedValue == ddlTeamB.SelectedValue)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('⚠ Team A and Team B cannot be the same!');", true);
                return;
            }

            DataTable dt = ScoreTable;
            dt.Rows.Add(
                txtMatchDate.Text,
                ddlTeamA.SelectedValue,
                txtScoreA.Text,
                ddlTeamB.SelectedValue,
                txtScoreB.Text,
                txtVenue.Text
            );

            ScoreTable = dt;
            BindGrid();

            // Clear inputs
            txtScoreA.Text = txtScoreB.Text = txtVenue.Text = "";
            txtMatchDate.Text = "";
        }

        protected void btnMainField_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx"); // Replace with your main dashboard page
        }
    }
}