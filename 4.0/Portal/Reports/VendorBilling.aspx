<%@ Page Language="C#" CodeBehind="VendorBilling.aspx.cs" AutoEventWireup="false" Inherits="GMPortal.Reports.VendorBilling"
    MasterPageFile="~/Master.Master" %>

<%@ Import Namespace="GMConstants" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
    <ctl:PageTitle ID="pgTitle" runat="server" Label="Vendor Billing Report" />
</asp:Content>
