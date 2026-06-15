<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Atleticore.Dashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Atleticore Dashboard</title>
    <link href="Content/Dashboard.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="dashboard-container">
            <h1>🏟 Atleticore Dashboard</h1>

            <!-- Summary Section -->
            <div class="summary-section">
                <div class="summary-box">
                    <asp:Label ID="lblTotalPlayers" runat="server" CssClass="summary-label" Text="Total Players: 110"></asp:Label>
                </div>
                <div class="summary-box">
                    <asp:Label ID="lblTotalTeams" runat="server" CssClass="summary-label" Text="Total Teams: 10"></asp:Label>
                </div>
            </div>

            <!-- Navigation Section -->
            <div class="nav-section">
                <!-- Player Forms -->
                <div class="nav-box">
                    <h2>Player Forms</h2>
                    <asp:Button ID="btnPlayerReg" runat="server" CssClass="nav-btn" Text="Player Registration" OnClick="btnPlayerReg_Click" />
                    <asp:Button ID="btnTournamentReg" runat="server" CssClass="nav-btn" Text="Tournament Registration" OnClick="btnTournamentReg_Click" />
                </div>

                <!-- Coach/Manager Forms -->
                <div class="nav-box">
                    <h2>Coach / Manager Forms</h2>
                    <asp:Button ID="btnTeamReg" runat="server" CssClass="nav-btn" Text="Team Registration" OnClick="btnTeamReg_Click" />
                     
                    <asp:Button ID="btnScoreEntry" runat="server" CssClass="nav-btn" Text="Score Entry" OnClick="btnScoreEntry_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>