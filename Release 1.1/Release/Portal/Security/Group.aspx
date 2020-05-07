<%@ Page Language="C#" CodeBehind="Group.aspx.cs" AutoEventWireup="false" Inherits="GMPortal.Security.Group"
    MasterPageFile="~/Master.Master" %>

<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<%@ Register TagPrefix="ctl" TagName="TwoList" Src="~/Controls/Twolist.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Text" Src="~/Controls/Text.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
    <table border="0" style="vertical-align: top; text-align: center;">
        <ctl:pagetitle id="pgTitle" runat="server" label="Group Settings" />
        <tr>
            <td>
                <table>
                    <tr align="center">
                        <td colspan="2">
                            <table style="width: 1%">
                                <ctl:text id="txtName" runat="server" label="Name" required="true" width="200" />
                                <ctl:text id="txtDescription" runat="server" label="Description" textmode="MultiLine"
                                    width="200" />
                                <tr>
                                    <td colspan="2">
                                        <ctl:twolist id="tltPermissions" runat="server" title="Permission(s)" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <ctl:button id="btnSave" text="Save" runat="server" />
                                        <ctl:button id="btnDelete" text="Delete" runat="server" causesvalidation="false" />
                                        <ctl:button id="btnCancel" text="Cancel" runat="server" causesvalidation="false" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
