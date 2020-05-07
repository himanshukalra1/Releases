<%@ Control Language="C#" AutoEventWireup="false" Codebehind="Dropdown.ascx.cs" Inherits="GMPortal.Controls.Dropdown" %>
<tr align="left">
    <td style="white-space:nowrap;">
        <asp:Label ID="ucLabel" runat="server" />
    </td>
    <td style="white-space: nowrap;">
        <asp:DropDownList ID="ucDDL" runat="server" BorderStyle="Solid" BorderWidth="1pt" />
        <asp:RequiredFieldValidator ID="ucRFV" runat="server" ControlToValidate="ucDDL" InitialValue="0" CssClass="Error">*</asp:RequiredFieldValidator></td>
</tr>
