<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="RecordSearch.aspx.cs"
    Inherits="GMPortal.Pipeline.RecordSearch" MasterPageFile="~/Master.Master" %>

<%@ Import Namespace="GMConstants" %>
<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<%@ Register TagPrefix="ctl" TagName="DDown2" Src="~/Controls/Dropdown2.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Text2" Src="~/Controls/Text2.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
    <table border="0" style="overflow: auto; width: 100%;">
        <ctl:PageTitle ID="pgTitle" runat="server" Label="Duplicate Search" />
        <tr>
            <td valign="top" align="center">
                <table border="0" style="width: 98%;">
                    <tr>
                        <td>
                            <asp:HiddenField ID="hdnSearch" runat="server" Value="" />
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:GridView ID="grvDataTable" CssClass="gridTable" runat="server" ShowFooter="false"
                                DataKeyNames="ID" SortedAscendingHeaderStyle-CssClass="sortasc" SortedDescendingHeaderStyle-CssClass="sortdesc"
                                AutoGenerateColumns="false" HeaderStyle-CssClass="GridHeader" RowStyle-CssClass="GridItem"
                                AlternatingRowStyle-CssClass="GridAltItem">
                                <Columns>
                                    <asp:TemplateField HeaderText="ID">
                                        <ItemTemplate>
                                            <a href='<%# GetRedirectURL(UIConstants.RecordCaseAspx , QueryStringConstants.RecordID , Eval("ID"))%>'>
                                                <%# Eval("ID") %></a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="CompanyName" HeaderText="Company" />
                                    <asp:BoundField DataField="ReceivedDate" HeaderText="Received Date" DataFormatString="{0:MM/dd/yyyy}"
                                        HtmlEncode="false" />
                                    <asp:BoundField DataField="RecordStatusName" HeaderText="Status" />
                                    <asp:BoundField DataField="County" HeaderText="County" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" />
                                    <asp:BoundField DataField="DOB" HeaderText="DOB" DataFormatString="{0:MM/dd/yyyy}"
                                        HtmlEncode="false" />
                                    <asp:BoundField DataField="CaseTypeName" HeaderText="Type" />
                                    <asp:BoundField DataField="Years" HeaderText="Yrs" />
                                    <asp:BoundField DataField="ActionTypeName" HeaderText="Action Type" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <tr>
                                                <td colspan="100%" align="right">
                                                    <div style="width: 90%">
                                                        <asp:HiddenField ID="hdnRecordId" runat="server" Value='<%# Eval("ID")%>' />
                                                        <asp:GridView ID="grdDataTable1" CssClass="gridTable" HeaderStyle-CssClass="GridHeader"
                                                            RowStyle-CssClass="GridItem" AlternatingRowStyle-CssClass="GridAltItem" runat="server"
                                                            AutoGenerateColumns="False" DataSourceID="odsRecordCaseData">
                                                            <Columns>
                                                                <asp:BoundField DataField="CaseNumber" HeaderText="Case #" />
                                                                <asp:BoundField DataField="ViolationDate" HeaderText="Violation Date" DataFormatString="{0:MM/dd/yyyy}"
                                                                    HtmlEncode="false" />
                                                                <asp:BoundField DataField="FileDate" HeaderText="File Date" DataFormatString="{0:MM/dd/yyyy}"
                                                                    HtmlEncode="false" />
                                                                <asp:BoundField DataField="DispoDate" HeaderText="Dispo Date" DataFormatString="{0:MM/dd/yyyy}"
                                                                    HtmlEncode="false" />
                                                                <asp:BoundField DataField="CaseNumber" HeaderText="Count" />
                                                                <asp:BoundField DataField="ProbationType" HeaderText="Probation Type" />
                                                                <asp:BoundField DataField="FileFee" HeaderText="Fine/Fee" />
                                                                <asp:BoundField DataField="Restitution" HeaderText="Restitution" />
                                                                <asp:TemplateField HeaderText="Copy Case">
                                                                    <ItemTemplate>
                                                                        <a href='<%# GetRedirectURL(UIConstants.CaseAspx ,QueryStringConstants.FromCaseID , Eval("ID"),QueryStringConstants.RecordID , PageID.ToString() )%>'>
                                                                            Copy</a>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                        </asp:GridView>
                                                        <asp:ObjectDataSource ID="odsRecordCaseData" runat="server" SelectMethod="GetRecordCaseData"
                                                            TypeName="GMUIBinder.Entity.RecordSearchUB">
                                                            <SelectParameters>
                                                                <asp:ControlParameter ControlID="hdnRecordId" DefaultValue="" Name="RecordId" Type="Int32" />
                                                            </SelectParameters>
                                                        </asp:ObjectDataSource>
                                                    </div>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <div id="simplediv" class="popup">
        <a href="javascript:void(0);" onclick="hidePopup('simplediv');">Close</a>
        <div id="simplediv1">
        </div>
    </div>
</asp:Content>
