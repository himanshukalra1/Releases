<%@ Page Language="c#" AutoEventWireup="false" CodeBehind="User.aspx.cs" Inherits="GMPortal.User"
    MasterPageFile="~/Master.Master" %>

<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Text" Src="~/Controls/Text.ascx" %>
<%@ Register TagPrefix="ctl" TagName="DDown" Src="~/Controls/Dropdown.ascx" %>
<%@ Register TagPrefix="ctl" TagName="CBox" Src="~/Controls/Checkbox.ascx" %>
<%@ Register TagPrefix="ctl" TagName="TwoList" Src="~/Controls/Twolist.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PasswordHint" Src="~/Controls/PasswordHint.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
    <table>
        <ctl:pagetitle id="pgTitle" runat="server" label="User Settings" />
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td align="center">
                <table border="0" style="width: 50%">
                    <tr>
                        <td valign="top" style="width: 50%">
                            <table border="0">
                                <tr><td style="width:30%"></td>
                                </tr>
                                <ctl:text id="txtFirstName" runat="server" label="First Name" required="true" />
                                <ctl:text id="txtLastName" runat="server" label="Last Name" required="true"/>
                                <ctl:text id="txtName" runat="server" label="Log-in ID" required="true" />
                                <ctl:text id="txtPassword" runat="server" label="Password*" required="true" textmode="Password"
                                    validationtype="Password" />
                                <ctl:cbox id="ckbIsPasswordChangedManual" runat="server" text="Override" />
                                <ctl:text id="txtDailySalary" runat="server" label="Daily Wages (Rs.)" validationtype="DecimalNumber" maxlen="7" />
                                <ctl:ddown id="ddlDepartmentID" runat="server" label="Department Type" required="true" />
                                <ctl:ddown id="ddlTypeID" runat="server" label="Employee Type" required="true" />
                                <ctl:text id="txtContactNo" runat="server" label="Contact No" validationtype="CellPhone"
                                    maxlen="13" />
                                <ctl:text id="txtEmail" runat="server" label="E-Mail" validationtype="EMail" />
                                <ctl:cbox id="ckbActive" runat="server" text="Active" />
                                <ctl:cbox id="ckbLock" runat="server" text="Lokced" />
                            </table>
                        </td>
                        <td valign="top" align="left">
                            <table border="0">
                                <tr>
                                    <td valign="top" align="left">
                                        <ctl:twolist id="tltGroups" runat="server" title="Group(s)" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
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
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <ctl:pagetitle id="pgPHContent" runat="server" label="Password Hints*" />
        <ctl:passwordhint id="phContent" runat="server" />
    </table>
</asp:Content>
