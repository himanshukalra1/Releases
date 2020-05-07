<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="Vendors.aspx.cs" Inherits="GMPortal.Entity.Vendors"
    MasterPageFile="~/Master.Master" %>

<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<%@ Register TagPrefix="ctl" TagName="List" Src="~/Controls/List.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
    <table>
        <tr>
            <td>
                <ctl:PageTitle ID="pgTitle" runat="server" Label="Vendors" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;
            </td>
        </tr>
        <tr>
            <td align="center">
                <table style="width:1%">
                    <tr>
                        <td>
                            <ctl:List ID="lstMembers" runat="server" Width="170" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <ctl:Button ID="btnCreate" Text="Create" runat="server" />
                            <br />
                            <ctl:Button ID="btnModify" Text="Modify" runat="server" />
                            <br />
                            <ctl:Button ID="btnCancel" Text="Cancel" runat="server" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
