<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScoreEntry.aspx.cs" Inherits="Atleticore.ScoreEntry" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Score Entry - Atleticore</title>
    <link href="Content/StyleSheet4.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Score Entry</h1>

            <div class="form-section">
                <label for="ddlTeamA">Team A:</label>
                <asp:DropDownList ID="ddlTeamA" runat="server" CssClass="input-box">
                    <asp:ListItem>Kaushik FC</asp:ListItem>
                    <asp:ListItem>Anushakti FC</asp:ListItem>
                    <asp:ListItem>Sparkle Academy</asp:ListItem>
                    <asp:ListItem>Millat FC</asp:ListItem>
                    <asp:ListItem>Bravo FC</asp:ListItem>
                    <asp:ListItem>Conscient FC</asp:ListItem>
                </asp:DropDownList>

                <label for="txtScoreA">Team A Score:</label>
                <asp:TextBox ID="txtScoreA" runat="server" CssClass="input-box" Placeholder="Enter Score"></asp:TextBox>

                <label for="ddlTeamB">Team B:</label>
                <asp:DropDownList ID="ddlTeamB" runat="server" CssClass="input-box">
                    <asp:ListItem>Kaushik FC</asp:ListItem>
                    <asp:ListItem>Anushakti FC</asp:ListItem>
                    <asp:ListItem>Sparkle Academy</asp:ListItem>
                    <asp:ListItem>Millat FC</asp:ListItem>
                    <asp:ListItem>Bravo FC</asp:ListItem>
                    <asp:ListItem>Conscient FC</asp:ListItem>
                </asp:DropDownList>

                <label for="txtScoreB">Team B Score:</label>
                <asp:TextBox ID="txtScoreB" runat="server" CssClass="input-box" Placeholder="Enter Score"></asp:TextBox>

                <label for="txtMatchDate">Match Date:</label>
                <asp:TextBox ID="txtMatchDate" runat="server" CssClass="calendar-box" TextMode="Date"></asp:TextBox>

                <label for="txtVenue">Venue:</label>
                <asp:TextBox ID="txtVenue" runat="server" CssClass="input-box" Placeholder="Enter Venue"></asp:TextBox>

                <div class="button-group" style="margin-top: 20px;">
                    <asp:Button ID="btnSubmitScore" runat="server" Text="Submit Score" CssClass="btn-submit-large" OnClick="btnSubmitScore_Click" />
                    <asp:Button ID="btnMainField" runat="server" Text="Main Field" CssClass="btn-mainfield-large" OnClick="btnMainField_Click" />
                </div>
            </div>

            <div class="grid-section" style="margin-top:30px;">
                <asp:GridView ID="gvScores" runat="server" AutoGenerateColumns="false" CssClass="grid-view">
                    <Columns>
                        <asp:BoundField DataField="MatchDate" HeaderText="Match Date" />
                        <asp:BoundField DataField="TeamA" HeaderText="Team A" />
                        <asp:BoundField DataField="ScoreA" HeaderText="Score A" />
                        <asp:BoundField DataField="TeamB" HeaderText="Team B" />
                        <asp:BoundField DataField="ScoreB" HeaderText="Score B" />
                        <asp:BoundField DataField="Venue" HeaderText="Venue" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>