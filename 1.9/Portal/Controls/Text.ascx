<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="Text.ascx.cs" Inherits="GMPortal.Controls.Text" %>
<tr align="left">
    <td style="white-space: nowrap;">
        <asp:Label ID="ucLabel" runat="server" />
    </td>
    <td style="white-space: nowrap;">
        <asp:TextBox ID="ucText" runat="server" /><asp:RequiredFieldValidator ID="ucRFV" runat="server" Enabled="false" ControlToValidate="ucText" Text="*" />
        <asp:RegularExpressionValidator ID="ucREV" runat="server" ControlToValidate="ucText"  Text="*" CssClass="Error" />
        </td>
</tr>
