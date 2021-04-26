<%@ Page Language="C#" CodeBehind="Interface.aspx.cs" AutoEventWireup="false" Inherits="GMPortal.Entity.Interface"
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
        <ctl:PageTitle ID="pgTitle" runat="server" Label="Interface Settings" />
        <tr align="center">
            <td align="center">
                <table style="width: 50%;">
                    <tr>
                        <td>
                            <table>
                                <ctl:Text ID="txtName" runat="server" Label="Interface Name:" Required="true" Width="200" />
                                <ctl:DDown ID="ddlCompanyID" runat="server" Label="Company:" Required="true" />
                                <ctl:Text ID="txtInterfaceURL" runat="server" Label="URL:" Required="true" Width="200" />
                                <ctl:Text ID="txtInterfaceUserName" runat="server" Label="User Name:" Required="true" Width="200" />
                                <ctl:Text ID="txtInterfacePassword" runat="server" Label="Password:" Required="true" Width="200" />
                            </table>
                        </td>
                        <td valign="top">
                            <table>
                                <ctl:Text ID="txtUDF1" runat="server" Label="UDF1:" Width="200" />
                                <ctl:Text ID="txtUDF2" runat="server" Label="UDF2:" Width="200" />
                                <ctl:Text ID="txtUDF3" runat="server" Label="UDF3:" Width="200" />
                                <ctl:Text ID="txtUDF4" runat="server" Label="UDF4:" Width="200" />
                                <ctl:Text ID="txtUDF5" runat="server" Label="UDF5:" Width="200" />
                                <ctl:Text ID="txtUDF6" runat="server" Label="UDF6:" Width="200" />

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
