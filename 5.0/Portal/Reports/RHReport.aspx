<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RHReport.aspx.cs" Inherits="GMPortal.Reports.RHReport"
    MasterPageFile="~/Master.Master" %>
<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Text" Src="~/Controls/Text.ascx" %>
<%@ Register TagPrefix="ctl" TagName="DDown" Src="~/Controls/Dropdown.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
    <asp:ScriptManager ID="smCountyRate" runat="server" EnablePartialRendering="true">
    </asp:ScriptManager>
    <table>
        <ctl:PageTitle ID="pgTitle" runat="server" Label="Record History" />
        <tr>
            <td>
                <table style="width: 25%;">
                    <ctl:DDown ID="ddlCompanyID" runat="server" Required="false" Label="Company:" Width="200" />
                    <ctl:DDown ID="ddlCountyID" runat="server" Required="false" Label="County:" />
                    <ctl:Text ID="txtFromDate" runat="server" Label="From Date:" Required="true" Width="140"
                        ValidationType="Date" />
                    <ctl:Text ID="txtToDate" runat="server" Label="To Date:" Required="true" Width="140"
                        ValidationType="Date" />
                    <ctl:DDown ID="ddlRecordStatusID" runat="server" Label="Status:" Required="true" />
                    <tr>
                        <td style="height: 12pt;">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <ctl:Button ID="btnReport" Text="Generate" runat="server" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <script type="text/javascript" src="../Script/Common.js"></script>
</asp:Content>
