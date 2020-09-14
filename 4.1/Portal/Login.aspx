<%@ Page Language="c#" AutoEventWireup="false" Codebehind="Login.aspx.cs" Inherits="GMPortal.Login" 	MasterPageFile="~/Master.Master" %>
<%@ Register TagPrefix="ctl" TagName="SignIN" Src="~/Controls/LogIn.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
	<table border="0" style="width:100%;">
	 <tr>
            <td>
                <ctl:SignIN ID="ucLogIn" runat="server" />
            </td>
        </tr>
	</table>
</asp:Content>
