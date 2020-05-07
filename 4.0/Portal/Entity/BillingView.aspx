<%@ Page Language="C#" CodeBehind="BillingView.aspx.cs" AutoEventWireup="false" Inherits="GMPortal.Entity.BillingView" EnableViewState="false" %>
<html>
    <head title="Billing View"><link rel="stylesheet" type="text/css" href="../Theme/style.css" /></head>
    <body>
        <form runat="server" id="bvform">
            <asp:GridView ID="gvBilling" runat="server" ShowFooter="false" HeaderStyle-CssClass="GridHeader"
                                        AlternatingRowStyle-CssClass="GridAltItem" Width="100%"></asp:GridView>
        </form>
    </body>
</html>
