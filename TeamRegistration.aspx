<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeamRegistration.aspx.cs" Inherits="Atleticore.TeamRegistration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Team Registration - Atleticore</title>
    <link href="Content/StyleSheet2.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Team Registration</h1>
            <p style="text-align:center; color:#004d99; font-weight:bold;">
                This form is only for Coaches/ Admins / Managers
            </p>

            <!-- Team Details Section -->
            <div class="form-section">
                <label for="txtTeamName">Team Name:</label>
                <asp:TextBox ID="txtTeamName" runat="server" CssClass="input-box"></asp:TextBox>

                <label for="txtCoach">Coach Name:</label>
                <asp:TextBox ID="txtCoach" runat="server" CssClass="input-box"></asp:TextBox>

                <label for="txtFounded">Founded Year:</label>
                <asp:TextBox ID="txtFounded" runat="server" CssClass="input-box"></asp:TextBox>

                <label for="ddlTeamType">Team Type:</label>
                <asp:DropDownList ID="ddlTeamType" runat="server" CssClass="input-box">
                    <asp:ListItem Text="-- Select Type --" Value=""></asp:ListItem>
                    <asp:ListItem Text="Professional" Value="Professional"></asp:ListItem>
                    <asp:ListItem Text="Academy" Value="Academy"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <!-- Player Selection Section -->
            <div class="grid-section">
                <h3>Select Players for the Team:</h3>
                <asp:GridView ID="gvPlayers" runat="server" AutoGenerateColumns="false" CssClass="grid-view">
                    <Columns>
                        <asp:TemplateField HeaderText="Select">
                            <ItemTemplate>
                                <asp:CheckBox ID="cbSelect" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Name" HeaderText="Player Name" />
                        <asp:BoundField DataField="Age" HeaderText="Age" />
                        <asp:BoundField DataField="Position" HeaderText="Position" />
                    </Columns>
                </asp:GridView>

                <!-- Buttons Below Player Grid -->
                <div class="button-group" style="margin-top:20px;">
                    <asp:Button ID="btnAssignPlayers" runat="server" Text="Assign Selected Players" CssClass="btn-submit-large" OnClick="btnAssignPlayers_Click" />
                    <asp:Button ID="btnRegisterTeam" runat="server" Text="Register Team" CssClass="btn-submit-large" OnClick="btnRegisterTeam_Click" />
                    <asp:Button ID="btnMainField" runat="server" Text="Main Field" CssClass="btn-clear-large" OnClick="btnMainField_Click" />
                </div>
            </div>

            <!-- Registered Teams Grid -->
            <div class="grid-section" style="margin-top:30px;">
                <h3>Registered Teams:</h3>
                <asp:GridView ID="gvRegisteredTeams" runat="server" AutoGenerateColumns="false" CssClass="grid-view">
                    <Columns>
                        <asp:BoundField DataField="TeamName" HeaderText="Team Name" />
                        <asp:BoundField DataField="Coach" HeaderText="Coach" />
                        <asp:BoundField DataField="Founded" HeaderText="Founded Year" />
                        <asp:BoundField DataField="TeamType" HeaderText="Team Type" />
                        <asp:BoundField DataField="Players" HeaderText="Players" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>