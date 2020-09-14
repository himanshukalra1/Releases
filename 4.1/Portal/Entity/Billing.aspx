<%@ Page Language="C#" CodeBehind="Billing.aspx.cs" AutoEventWireup="false" Inherits="GMPortal.Entity.Billing"
    MasterPageFile="~/Master.Master" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Text" Src="~/Controls/Text.ascx" %>
<%@ Register TagPrefix="ctl" TagName="FileUpload" Src="~/Controls/FileUpload.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
    <table border="0" style="vertical-align: top; text-align: center;">
        <ctl:PageTitle ID="pgTitle" runat="server" Label="Upload Biiling" />
        <tr align="center">
            <td align="center">
                <table style="width: 50%;">
                    <tr>
                        <td>
                            <table>
                                <ctl:Text ID="txtName" runat="server" Label="Name:" Required="true" Width="140" />
                                <ctl:Text ID="txtMonthOf" runat="server" Label="Month Of:" Width="140" ValidationType="Date1st"
                                    Required="true" />
                                <ctl:FileUpload ID="fudData" runat="server" Label="Data:" Required="false" Width="200" />
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <ctl:Button ID="btnSave" Text="Save" runat="server" />
                            <ctl:Button ID="btnCancel" Text="Cancel" runat="server" CausesValidation="false" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
