<%@ Page Language="C#" CodeBehind="Company.aspx.cs" AutoEventWireup="false" Inherits="GMPortal.Entity.Company"
    MasterPageFile="~/Master.Master" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Text" Src="~/Controls/Text.ascx" %>
<%@ Register TagPrefix="ctl" TagName="DDown" Src="~/Controls/Dropdown.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Check" Src="~/Controls/Checkbox.ascx" %>
<%@ Register TagPrefix="ctl" TagName="FileUpload" Src="~/Controls/FileUpload.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
    <asp:ScriptManager ID="smCountyRate" runat="server" EnablePartialRendering="true">
    </asp:ScriptManager>
    <table border="0" style="vertical-align: top; text-align: center;">
        <ctl:PageTitle ID="pgTitle" runat="server" Label="Company Settings" />
        <tr align="center">
            <td align="center">
                <table style="width: 50%;">
                    <tr>
                        <td>
                            <table>
                                <ctl:Text ID="txtName" runat="server" Label="Company Name:" Required="true" Width="200" />
                                <ctl:Text ID="txtAddressL1" runat="server" Label="Address L1:" Required="false" Width="200" />
                                <ctl:Text ID="txtAddressL2" runat="server" Label="Address L2:" Required="false" Width="200" />
                                <ctl:Text ID="txtCity" runat="server" Label="City:" Required="false" Width="200" />
                                <ctl:DDown ID="ddlStateID" runat="server" Label="State:" Required="true" />
                                <ctl:Text ID="txtPostalCode" runat="server" Label="Postal Code:" Required="false" ValidationType="Pincode"
                                    Width="200" />
                                <ctl:Text ID="txtContactPerson" runat="server" Label="Contact Person:" Required="true"
                                    Width="200" />
                                <ctl:Text ID="txtPhone" runat="server" Label="Contact No:" Required="true" Width="200" ValidationType="CellPhone" />
                                <ctl:Text ID="txtFax" runat="server" Label="Fax:" Required="false" Width="200" ValidationType="CellPhone"/>
                                <ctl:Text ID="txtEmail" runat="server" Label="E-Mail:" Required="true" Width="200" ValidationType="EMail"/>
                                <ctl:Text ID="txtWebSite" runat="server" Label="Web Site:" Required="false" Width="200" />
                                <ctl:Check ID="chkActive" runat="server" Text="Active" />
                            </table>
                        </td>
                        <td valign="top">
                            <table>
                                <ctl:FileUpload ID="fluDTSMapping" runat="server" Label="Record Mapping:" Required="false" Width="200"/>
                                <ctl:FileUpload ID="fluCaseTypeMapping" runat="server" Label="Case Type Mapping:" Required="false" Width="200"/>
                                <ctl:Text ID="txtComments" runat="server" Label="Comments:" Required="false" Width="200"
                                    TextMode="MultiLine" />
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <ctl:Button ID="btnSave" Text="Save" runat="server" />
                            <ctl:Button ID="btnDelete" Text="Delete" runat="server" CausesValidation="false" />
                            <ctl:Button ID="btnCancel" Text="Cancel" runat="server" CausesValidation="false" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
