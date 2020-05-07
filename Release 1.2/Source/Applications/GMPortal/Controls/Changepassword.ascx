<%@ Control Language="C#" AutoEventWireup="false" Codebehind="Changepassword.ascx.cs"
    Inherits="GMPortal.Controls.Changepassword" %>
<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Text" Src="~/Controls/Text.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PasswordHint" Src="~/Controls/PasswordHint.ascx" %>
<table border="0" style="overflow: auto; width: 100%;">
    <ctl:PageTitle ID="pgTitle" runat="server" Label="Change Password" />
    <ctl:Text ID="txtPassword" runat="server" TextMode="Password" Label="Current password" ValidationType="Password"
        Required="true" />
    <ctl:Text ID="txtNewPassword" runat="server" TextMode="Password" Label="New password*"
        ValidationType="Password" Required="true" />
    <ctl:Text ID="txtConfirmNewPassword" runat="server" TextMode="Password" Label="Confirm new password*"
        ValidationType="Password" Required="true" />
    <tr>
        <td colspan="2">
            <ctl:Button ID="btnChangePassword" Text="Apply" runat="server" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
        </td>
    </tr>
        <ctl:PageTitle ID="pgPH" runat="server" Label="Password change Hints*" />
    <tr>
        <td id="tdPasswordChangeNote" align="left" colspan="2">
            <li><%=PasswordNote %></li>
        </td>
    </tr>
    <ctl:PasswordHint ID="phContent" runat="server" />
</table>
