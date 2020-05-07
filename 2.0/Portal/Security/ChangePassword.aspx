<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ChangePassword.aspx.cs"
    Inherits="GMPortal.Security.ChangePassword" MasterPageFile="~/Master.Master" %>

<%@ Register TagPrefix="ctl" TagName="CP" Src="~/Controls/ChangePassword.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
    <ctl:CP ID="ucChangePassword" runat="server" />
</asp:Content>
