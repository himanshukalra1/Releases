<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="LogIn.ascx.cs" Inherits="GMPortal.Controls.LogIn" %>
<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Text" Src="~/Controls/Text.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<table border="0" style="width: 100%;">
    <ctl:PageTitle ID="pgTitle" runat="server" Label="Log-in Details" />
    <tr>
        <td colspan="2" align="center">
            <table style="width: 1%;">
                <ctl:Text ID="txtUserID" runat="server" Label="User ID" Required="true" Value="" />
                <ctl:Text ID="txtPassword" runat="server" TextMode="Password" Label="Password" Required="true"
                    ValidationType="Password" PasteContent="false" />
                <tr>
                    <td colspan="2">
                        <ctl:Button ID="btnSignin" Text="SIGN IN" runat="server" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
