<%@ Page Language="C#" AutoEventWireup="false" Codebehind="SystemUI.aspx.cs" Inherits="GMPortal.Security.SystemUI"
    MasterPageFile="~/Master.Master" %>

<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Text" Src="~/Controls/Text.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
    <table border="0" style="overflow: auto; width: 100%;">
        <tr>
            <ctl:PageTitle ID="pgTitle" runat="server" Label="System Settings" />
            <td valign="top" align="center">
                <table border="0" style="width: 1%;">
                    <ctl:Text ID="txtMaxPasswordAttempt" runat="server" Label="Maximum Allowed Password Attempts" Required="true" />
                    <ctl:Text ID="txtMaxPasswordDays" runat="server" Label="Maximum Password Valid Days" Required="true" />
                </table>
            </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        <tr>
            <td>
                <ctl:Button ID="btnSave" Text="Save" runat="server" />
                <ctl:Button ID="btnCancel" Text="Cancel" runat="server" CausesValidation="false" />
            </td>
        </tr>
    </table>
</asp:Content>
