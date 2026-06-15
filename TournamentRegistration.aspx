<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TournamentRegistration.aspx.cs" Inherits="Atleticore.TournamentRegistration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tournament Registration - Atleticore</title>
    <link href="Content/StyleSheet3.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Tournament Registration</h1>

            <div class="tournament-cards">
                <asp:Repeater ID="rptTournaments" runat="server">
                    <ItemTemplate>
                        <div class="card" onclick="SelectCard(this)">
                            <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("Name") %>' />
                            <h3><%# Eval("Name") %></h3>
                            <p>Venue: <%# Eval("Venue") %></p>
                            <p>Fee: ₹<%# Eval("Fee") %></p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

            <div class="button-group">
                <asp:Button ID="btnPay" runat="server" Text="Pay" CssClass="btn-pay" OnClick="btnPay_Click" />
                <asp:Button ID="btnMainField" runat="server" Text="Main Field" CssClass="btn-mainfield" OnClick="btnMainField_Click" />
            </div>
        </div>
    </form>

    <script type="text/javascript">
        function SelectCard(card) {
            var cards = document.getElementsByClassName('card');
            for (var i = 0; i < cards.length; i++) {
                cards[i].classList.remove('selected');
            }
            card.classList.add('selected');
        }
    </script>
</body>
</html>