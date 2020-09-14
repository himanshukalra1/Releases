<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="BatchPipeline.aspx.cs"
    Inherits="GMPortal.Pipeline.BatchPipeline" MasterPageFile="~/Master.Master" %>

<%@ Import Namespace="GMConstants" %>

<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<%@ Register TagPrefix="ctl" TagName="DDown2" Src="~/Controls/Dropdown2.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Text2" Src="~/Controls/Text2.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
    <table border="0" style="overflow: auto; width: 100%;">
        <ctl:PageTitle ID="pgTitle" runat="server" Label="Batch Pipeline" />
        <tr>
            <td valign="top" align="center">
                <table border="0" style="width: 98%;">
                    <tr id="trSearch">
                        <td style="white-space: nowrap; width: 100%; text-align: left;">
                            <div id="divSearch" runat="server">
                                <ctl:Text2 ID="txtID" runat="server" Required="false" Width="50" Label="ID: " />
                                <ctl:Text2 ID="txtName" runat="server" Required="false" Width="50" Label="Batch Name: " />
                                <ctl:DDown2 ID="ddlCompanyID" runat="server" Required="false" Label="Company: " />
                                <ctl:DDown2 ID="ddlUserID" runat="server" Required="false" Label="Uploaded By:" />
                                <ctl:Button ID="btnGo" Text=" Go " runat="server" />
                                <ctl:Button ID="btnClear" Text="Clear" runat="server" />
                            </div>
                            <asp:HiddenField ID="hdnSearch" runat="server" Value="" />
                            <asp:HiddenField ID="hdnShowSearch" runat="server" Value="0" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:GridView ID="grvDataTable" CssClass="gridTable" runat="server" ShowFooter="false"
                                DataKeyNames="ID" SortedAscendingHeaderStyle-CssClass="sortasc" SortedDescendingHeaderStyle-CssClass="sortdesc"
                                AutoGenerateColumns="false" HeaderStyle-CssClass="GridHeader" AllowPaging="true"
                                AllowSorting="true" PageIndex="0" AlternatingRowStyle-CssClass="GridAltItem"
                                DataSourceID="odsBatchPipeline">
                                <Columns>
                                    <asp:TemplateField SortExpression="ID" HeaderText="ID">
                                        <ItemTemplate>
                                            <a href='<%# GetRedirectURL(UIConstants.RecordPipelineAspx ,QueryStringConstants.BatchID , Eval("ID"))%>'>
                                                <%# Eval("ID")%></a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Name" HeaderText="Batch Name" SortExpression="Name" />
                                    <asp:BoundField DataField="CompanyName" HeaderText="Company" SortExpression="CompanyName" />
                                    <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" SortExpression="CreatedDate"
                                        DataFormatString="{0:MM/dd/yyyy}" HtmlEncode="false" />
                                    <asp:BoundField DataField="UserName" HeaderText="Uploaded By" SortExpression="UserName" />
                                    <asp:BoundField DataField="StateName" HeaderText="State" SortExpression="StateName" />
                                    <asp:BoundField DataField="PassCount" HeaderText="Record Count" SortExpression="PassCount" />
                                </Columns>
                                <PagerSettings Mode="NumericFirstLast" Position="Bottom" PageButtonCount="5" />
                                <PagerStyle CssClass="gridPager" />
                            </asp:GridView>
                            <asp:ObjectDataSource ID="odsBatchPipeline" runat="server" SelectMethod="GetBatchPipelineData"
                                EnablePaging="true" StartRowIndexParameterName="PageNumber" TypeName="GMUIBinder.Entity.BatchPipelineUB"
                                MaximumRowsParameterName="NumOfRows" SortParameterName="SortField" SelectCountMethod="GetTotalBatchCount">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="hdnSearch" DefaultValue="" Name="search" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <script src="../Script/jquery/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            var dvs = $('#' + '<%=divSearch.ClientID%>');
            dvs.find('span').each(function () { $(this).addClass('mleft2'); });
            dvs.find('input[type=button]').each(function () { $(this).addClass('mleft8').addClass('mtop0'); });
        });
    </script>
</asp:Content>
