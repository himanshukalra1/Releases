<%@ Page Language="C#" CodeBehind="BatchUpload.aspx.cs" AutoEventWireup="false" Inherits="GMPortal.Entity.BatchUpload"
    MasterPageFile="~/Master.Master" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Text" Src="~/Controls/Text.ascx" %>
<%@ Register TagPrefix="ctl" TagName="DDown" Src="~/Controls/Dropdown.ascx" %>
<%@ Register TagPrefix="ctl" TagName="FileUpload" Src="~/Controls/FileUpload.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
    <asp:ScriptManager ID="smCountyRate" runat="server" EnablePartialRendering="true">
    </asp:ScriptManager>
    <table border="0" style="vertical-align: top; text-align: center;">
        <ctl:PageTitle ID="pgTitle" runat="server" Label="Batch Upload Settings" />
        <tr align="center">
            <td>
                <table style="width: 25%;">
                    <tr>
                        <td>
                            <table>
                                <ctl:Text ID="txtName" runat="server" Label="Batch Name:" Required="true" Width="200" />
                                <ctl:DDown ID="ddlCompanyID" runat="server" Label="Company:" Required="true" />
                                <ctl:FileUpload ID="fluBatchFilePath" runat="server" Label="File Path:" Required="true"
                                    Width="300" />
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <ctl:Button ID="btnUpload" Text="Upload" runat="server" />
                        </td>
                    </tr>
                    <tr id="trMsg" runat="server">
                        <td colspan="2" align="center">
                            <asp:Label ID="blbMsg" Text="" runat="server" />
                            <br />
                            <br />
                            <ctl:Button ID="btnContinue" Text="Continue" runat="server" CausesValidation="false" /><asp:HiddenField id="hdnID" runat="server" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
