<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="Dropdown.ascx.cs" Inherits="GMPortal.Controls.Dropdown" %>
<div style="float:left;white-space: nowrap;">
    <asp:Label ID="ucLabel" runat="server" />
    <asp:DropDownList ID="ucDDL" runat="server" BorderStyle="Solid" BorderWidth="1pt" />
    <asp:RequiredFieldValidator ID="ucRFV" runat="server" ControlToValidate="ucDDL" InitialValue="0" CssClass="Error" Display="Dynamic">*</asp:RequiredFieldValidator>
</div>
