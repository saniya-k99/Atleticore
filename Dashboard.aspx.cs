using System;
using System.Data;
using System.Web.UI;

namespace Atleticore
{
    public partial class Dashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        // Navigation button events
        protected void btnPlayerReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("PlayerRegistration.aspx");
        }

        protected void btnTournamentReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("TournamentRegistration.aspx");
        }

        protected void btnTeamReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeamRegistration.aspx");
        }

        protected void btnScoreEntry_Click(object sender, EventArgs e)
        {
            Response.Redirect("ScoreEntry.aspx");
        }
    }
}