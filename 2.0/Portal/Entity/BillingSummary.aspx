<%@ Page Language="C#" CodeBehind="BillingSummary.aspx.cs" AutoEventWireup="false" Inherits="GMPortal.Entity.BillingSummary"
    MasterPageFile="~/Master.Master" %>
<%@ Import Namespace="GMConstants" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
    <table border="0" style="vertical-align: top; text-align: center;">
        <ctl:PageTitle ID="pgTitle" runat="server" Label="Company Billing Settings" />
        <tr align="center">
            <td align="center">
                <table style="width: 25%;">
                    <tr>
                        <td>
                            <asp:GridView ID="grvBilling" runat="server" ShowFooter="false" DataKeyNames="ID" AutoGenerateColumns="false"
                                HeaderStyle-CssClass="GridHeader" AlternatingRowStyle-CssClass="GridAltItem">
                                <Columns>
                                    <asp:BoundField DataField="Name" HeaderText="Name" />
                                    <asp:BoundField DataField="MonthOf" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Month Of" />
                                    <asp:BoundField DataField="User" HeaderText="Uploaded By" />
                                    <asp:BoundField DataField="Created" DataFormatString="{0:MM/dd/yyyy hh:ss tt}" HeaderText="Created" />
                                    <asp:TemplateField HeaderText="Report">
                                        <ItemTemplate>
                                            <a href='javascript:opennewindow("<%# GetRedirectURL(UIConstants.BillingView ,QueryStringConstants.BillingID , Eval("ID"))%>", "Billing View", true);'>View</a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <ctl:Button ID="btnBilling" Text="Add" runat="server" />
                <ctl:Button ID="btnCancel" Text="Cancel" runat="server" CausesValidation="false" />
            </td>
        </tr>
    </table>
</asp:Content>
