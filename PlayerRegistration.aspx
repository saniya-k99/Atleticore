<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlayerRegistration.aspx.cs" Inherits="Atleticore.PlayerRegistration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Player Registration - Atleticore</title>
    <link href="Content/StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Player Registration</h1>

            <div class="form-section">
                <label for="txtName">Player Name:</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="input-box" Placeholder="Enter Player Name"></asp:TextBox>

                <label for="txtAge">Age:</label>
                <asp:TextBox ID="txtAge" runat="server" CssClass="input-box" Placeholder="Enter Age"></asp:TextBox>

                <label for="txtDOB">Date of Birth:</label>
                <asp:TextBox ID="txtDOB" runat="server" CssClass="calendar-box" TextMode="Date"></asp:TextBox>

                <label for="ddlPosition">Position:</label>
                <asp:DropDownList ID="ddlPosition" runat="server" CssClass="input-box">
                    <asp:ListItem>Goalkeeper (GK)</asp:ListItem>
                    <asp:ListItem>Defender (CB / RB / LB)</asp:ListItem>
                    <asp:ListItem>Midfielder (CM / CDM / CAM)</asp:ListItem>
                    <asp:ListItem>Forward (ST / CF)</asp:ListItem>
                </asp:DropDownList>

                <label for="ddlTeam">Team:</label>
                <asp:DropDownList ID="ddlTeam" runat="server" CssClass="input-box">
                    <asp:ListItem>Kaushik FC</asp:ListItem>
                    <asp:ListItem>Anushakti FC</asp:ListItem>
                    <asp:ListItem>Sparkle Academy</asp:ListItem>
                    <asp:ListItem>Millat FC</asp:ListItem>
                    <asp:ListItem>Bravo FC</asp:ListItem>
                    <asp:ListItem>Conscient FC</asp:ListItem>
                </asp:DropDownList>

                <label for="txtJersey">Jersey Number:</label>
                <asp:TextBox ID="txtJersey" runat="server" CssClass="input-box" Placeholder="Enter Jersey Number"></asp:TextBox>

                <label for="ddlRole">Player Role:</label>
                <asp:DropDownList ID="ddlRole" runat="server" CssClass="input-box">
                    <asp:ListItem>Captain</asp:ListItem>
                    <asp:ListItem>Vice-Captain</asp:ListItem>
                    <asp:ListItem>Member</asp:ListItem>
                </asp:DropDownList>

                <!-- Inline Player Status -->
                <div class="radio-list">
                    <span class="inline-label">Player Status:</span>
                    <label><asp:RadioButton ID="rblActive" GroupName="Status" runat="server" Text="Active" /></label>
                    <label><asp:RadioButton ID="rblInjured" GroupName="Status" runat="server" Text="Injured" /></label>
                    <label><asp:RadioButton ID="rblSuspended" GroupName="Status" runat="server" Text="Suspended" /></label>
                </div>

                <!-- Inline Skills -->
                <div class="checkbox-list">
                    <span class="inline-label">Skills:</span>
                    <label><asp:CheckBox ID="cbPassing" runat="server" Text="Passing" /></label>
                    <label><asp:CheckBox ID="cbShooting" runat="server" Text="Shooting" /></label>
                    <label><asp:CheckBox ID="cbDefending" runat="server" Text="Defending" /></label>
                    <label><asp:CheckBox ID="cbGoalkeeping" runat="server" Text="Goalkeeping" /></label>
                </div>

                <!-- Buttons -->
                <div class="button-group" style="margin-top: 20px;">
                    <asp:Button ID="btnRegister" runat="server" Text="Register Player" CssClass="btn-submit-large" OnClick="btnRegister_Click" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn-clear-large" OnClick="btnClear_Click" />
                    <asp:Button ID="btnMainField" runat="server" Text="Main Field" CssClass="btn-mainfield-large" OnClick="btnMainField_Click" />
                </div>
            </div>

            <!-- GridView at the bottom -->
            <div class="grid-section">
                <asp:GridView ID="gvPlayers" runat="server" AutoGenerateColumns="false" CssClass="grid-view">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Player Name" />
                        <asp:BoundField DataField="Age" HeaderText="Age" />
                        <asp:BoundField DataField="DOB" HeaderText="Date of Birth" />
                        <asp:BoundField DataField="Position" HeaderText="Position" />
                        <asp:BoundField DataField="Team" HeaderText="Team" />
                        <asp:BoundField DataField="Jersey" HeaderText="Jersey Number" />
                        <asp:BoundField DataField="Role" HeaderText="Player Role" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                        <asp:BoundField DataField="Skills" HeaderText="Skills" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>