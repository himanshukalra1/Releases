<%@ Control Language="C#" AutoEventWireup="false" Codebehind="Twolist.ascx.cs" Inherits="GMPortal.Controls.Twolist" %>
<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="List" Src="~/Controls/List.ascx" %>
<table cellpadding="0" cellspacing="0" border="0" style="white-space: nowrap;width:1%;">
    <tr>
        <td colspan="3">&nbsp;
        </td>
    </tr>
    <tr>
        <td colspan="3" class="Bold">
            <%=Title %>
            :</td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;
        </td>
    </tr>
    <tr>
        <td align="left" valign="top" style="width: 1%">
            <ctl:List ID="lstUNSelected" runat="server" Heading="Available" />
        </td>
        <td align="left" valign="middle" style="width: 1%; padding:2px;" >
            <ctl:Button ID="btnTORight" runat="server" Text="Select" Width="80" CausesValidation="false" />
            <br />
            <ctl:Button ID="btnTOLeft" runat="server" Text="Remove" Width="80" CausesValidation="false" />
            <br />
            <ctl:Button ID="btnTORightALL" runat="server" Text="Select All" Width="80" CausesValidation="false" />
            <br />
            <ctl:Button ID="btnTOLeftALL" runat="server" CausesValidation="false" Text="Remove All" Width="80" />
        </td>
        <td valign="top" align="left" style="width: 1%">
            <ctl:List ID="lstSelected" runat="server" SelectionMode="Multiple" Heading="Selected" />
        </td>
    </tr>
</table>
