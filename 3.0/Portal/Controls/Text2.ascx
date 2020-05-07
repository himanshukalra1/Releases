<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="Text.ascx.cs" Inherits="GMPortal.Controls.Text" %>
<div class="dvt2" style="white-space: nowrap;">
<asp:Label ID="ucLabel" runat="server" />
<asp:TextBox ID="ucText" runat="server" /><asp:RequiredFieldValidator ID="ucRFV" runat="server" Enabled="false" ControlToValidate="ucText" Text="*" CssClass="Error"/>
<asp:RegularExpressionValidator ID="ucREV" runat="server" ControlToValidate="ucText"  Text="*" CssClass="Error"/>
</div>

