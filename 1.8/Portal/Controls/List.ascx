<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="List.ascx.cs" Inherits="GMPortal.Controls.List" %>
<table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td>
            <asp:Label ID="lblHeading" runat="server" Visible="false"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:ListBox ID="ucList" runat="server" Height="150pt" Width="100pt"></asp:ListBox>
        </td>
    </tr>
</table>
