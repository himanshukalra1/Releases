<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="FileUpload.ascx.cs" Inherits="GMPortal.Controls.FileUpload" %>
<tr align="left">
    <td style="white-space: nowrap;">
        <asp:Label ID="ucLabel" runat="server" />
    </td>
    <td style="white-space: nowrap;">
        <asp:FileUpload ID="ucFileUpload" runat="server"/><asp:RequiredFieldValidator ID="ucRFV" runat="server" Enabled="false" ControlToValidate="ucFileUpload" Text="*" />
        &nbsp;
        <asp:LinkButton runat="server" Text="Download" ID="lnkDownload" Visible="false"></asp:LinkButton>
        </td>
</tr>
