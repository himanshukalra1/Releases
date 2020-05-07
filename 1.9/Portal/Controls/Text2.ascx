<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="Text.ascx.cs" Inherits="GMPortal.Controls.Text" %>
<div style="vertical-align:middle;float:left;">
<asp:Label ID="ucLabel" runat="server" />
<asp:TextBox ID="ucText" runat="server" /><asp:RequiredFieldValidator ID="ucRFV" runat="server" Enabled="false" ControlToValidate="ucText" Text="*" />
<asp:RegularExpressionValidator ID="ucREV" runat="server" ControlToValidate="ucText"  Text="*" />
</div>

