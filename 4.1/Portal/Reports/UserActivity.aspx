<%@ Page Language="C#" CodeBehind="UserActivity.aspx.cs" AutoEventWireup="false"
    Inherits="GMPortal.Reports.UserActivity" MasterPageFile="~/Master.Master" %>

<%@ Import Namespace="GMConstants" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Text" Src="~/Controls/Text.ascx" %>
<%@ Register TagPrefix="ctl" TagName="DDown" Src="~/Controls/Dropdown.ascx" %>
<asp:content contentplaceholderid="cphMaster" id="cnPage" runat="server">
    <table>
        <ctl:PageTitle ID="pgTitle" runat="server" Label="User Activity" />
        <tr>
            <td>
                <table style="width: 25%;">
                    <ctl:Text ID="txtFromDate" runat="server" Label="From Date:" Width="140" Required="true" ValidationType="Date" />
                    <ctl:Text ID="txtToDate" runat="server" Label="To Date:" Width="140" Required="true" ValidationType="Date" />
                    <ctl:DDown ID="ddlUserID" runat="server" Label="User:"  Required="true"/>
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
</asp:content>
