<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="RecordPipeline.aspx.cs"
    Inherits="GMPortal.Pipeline.RecordPipeline" MasterPageFile="~/Master.Master" %>

<%@ Import Namespace="GMConstants" %>
<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<%@ Register TagPrefix="ctl" TagName="DDown2" Src="~/Controls/Dropdown2.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Text2" Src="~/Controls/Text2.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
    <table border="0" style="overflow: auto; width: 100%;">
        <ctl:PageTitle ID="pgTitle" runat="server" Label="Record Pipeline" />
        <tr>
            <td valign="top" align="center">
                <table border="0" style="width: 98%;">
                    <tr id="trSearch">
                        <td style="white-space: nowrap; width: 100%; text-align: left;">
                            <div id="divSearch" runat="server">
                            
                                <ctl:Text2 ID="txtID" runat="server" Required="false" Width="30" Label="ID:" ValidationType="Number" />
                                <ctl:DDown2 ID="ddlCompanyID" runat="server" Required="false" Label="Company:" Width="200" />
                                <ctl:Text2 ID="txtCustomerRefNo" runat="server" Required="false" Width="50" Label="Client Ref #:" />
                                <ctl:DDown2 ID="ddlRecordStatusID" runat="server" Required="false" Label="Status:" />
                                <ctl:DDown2 ID="ddlCountyID" runat="server" Required="false" Label="County:" />
                                <ctl:Text2 ID="txtName" runat="server" Required="false" Width="80" Label="Name:" />
                                <ctl:DDown2 ID="ddlCaseTypeID" runat="server" Required="false" Label="Type:" />
                                <ctl:DDown2 ID="ddlActionID" runat="server" Required="false" Label="Action Type:" />
                            </div>
                            <asp:HiddenField ID="hdnSearch" runat="server" Value="" />
                            <asp:HiddenField ID="hdnShowSearch" runat="server" Value="0" />
                        </td>
                    </tr>
                    <tr>
                        <td style="white-space: nowrap; width: 100%; text-align: left;">
                            <table>
                                <tr>
                                    <td style="width: 50%;" align="left">
                                        <ctl:DDown2 ID="ddlChangeStatus" runat="server" Required="true" Label="" />
                                        <ctl:Button ID="btnChangeStatus1" Text="Change Status" runat="server" />
                                    </td>
                                    <td style="width: 50%" align="right">
                                        <ctl:Button ID="btnGo" Text=" Go " runat="server" CausesValidation="false" />
                                        <ctl:Button ID="btnClear" Text="Clear" runat="server" CausesValidation="false" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="grvRecord" CssClass="gridTable" runat="server" ShowFooter="false"
                                DataKeyNames="ID" SortedAscendingHeaderStyle-CssClass="sortasc" SortedDescendingHeaderStyle-CssClass="sortdesc"
                                AutoGenerateColumns="false" HeaderStyle-CssClass="GridHeader" AllowPaging="true"
                                AllowSorting="true" PageIndex="0" AlternatingRowStyle-CssClass="GridAltItem"
                                DataSourceID="odsRecordPipeline">
                                <Columns>
                                    <asp:TemplateField HeaderText="Select">
                                        <ItemTemplate>
                                            <asp:CheckBox ID='chkSelect' runat='server' onclick='<%# "javascript:showalert(this, &#39;" + Exists(Eval("ClientSplRemarks")) +  "&#39;)" %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:ImageField HeaderText="Flag" DataImageUrlField="Flag" DataImageUrlFormatString="..\Images\{0}.png" />
                                    <asp:TemplateField SortExpression="ID" HeaderText="ID">
                                        <ItemTemplate>
                                            <a runat="server" href='<%# GetRedirectURL(UIConstants.RecordCaseAspx ,QueryStringConstants.RecordID , Eval("ID"))%>'
                                                title='<%# Eval("ID")%>'>
                                                <%# Eval("ID")%></a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="CompanyName" HeaderText="Company" SortExpression="CompanyName" />
                                    <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" SortExpression="CreatedDate"
                                        DataFormatString="{0:MM/dd/yyyy hh:mm tt}" HtmlEncode="false" />
                                    <asp:TemplateField ItemStyle-Width="32px" HeaderText="Client Ref Number">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCustomerRefNo" runat="server" Text='<%# Eval("CustomerRefNo") %>'
                                                CssClass='<%# GMUtilities.GMConvert.GetInt32(Eval("CRNCount")) > 0 ? "hit":"noduplicate" %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="RecordStatusName" HeaderText="Status" SortExpression="RecordStatusName" />
                                    <asp:BoundField DataField="County" HeaderText="County" SortExpression="County" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" DataFormatString="{0:MM/dd/yyyy}"
                                        HtmlEncode="false" />
                                    <asp:BoundField DataField="CaseTypeName" HeaderText="Type" SortExpression="CaseTypeName" />
                                    <asp:BoundField DataField="Years" HeaderText="Yrs" SortExpression="Years" />
                                    <asp:BoundField DataField="ActionTypeName" HeaderText="Action Type" SortExpression="ActionTypeName" />
                                    <asp:TemplateField HeaderText="Current Result" SortExpression="CaseCount">
                                        <ItemTemplate>
                                            <div class='<%# GetCaseCountCSS( Eval("CaseCount")) %>' style="height: 100%;">
                                                <%# Eval("CaseCount")%>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="DB Result">
                                        <ItemTemplate>
                                            <div class='<%# Eval("MatchCountCSS")%>' style="height: 100%;">
                                                <a href='<%# GetRedirectURL(UIConstants.RecordSearchAspx ,QueryStringConstants.RecordID , Eval("ID"))%>'>
                                                    <%# Eval("MatchCount")%></a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Remarks">
                                        <ItemTemplate>
                                            <a href='javascript:showPopup("simplediv","<%# Eval("ClientRemarks")%>")' style='visibility: <%# Exists(Eval("ClientRemarks"))%>;'>
                                                Click Here</a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Spl Remarks">
                                        <ItemTemplate>
                                            <a href='javascript:showPopup("simplediv","<%# Eval("ClientSplRemarks")%>")' style='visibility: <%# Exists(Eval("ClientSplRemarks"))%>;'>
                                                Click Here</a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Report">
                                        <ItemTemplate>
                                            <a href='javascript:opennewindow("<%# GetRedirectURL(UIConstants.ReportAspx ,QueryStringConstants.RecordID , Eval("ID"), QueryStringConstants.ReportType, ReportType.RISCaseReport)%>", "Report", true);'>
                                                Generate</a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <PagerSettings Mode="NumericFirstLast" Position="Bottom" PageButtonCount="5" />
                                <PagerStyle CssClass="gridPager" />
                            </asp:GridView>
                            <asp:ObjectDataSource ID="odsRecordPipeline" runat="server" SelectMethod="GetRecordPipelineData"
                                EnablePaging="true" StartRowIndexParameterName="PageNumber" TypeName="GMUIBinder.Entity.RecordPipelineUB"
                                MaximumRowsParameterName="NumOfRows" SortParameterName="SortField" SelectCountMethod="GetTotalRecordCount">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="hdnSearch" DefaultValue="" Name="search" Type="String" />
                                    <asp:QueryStringParameter Name="BatchID" Type="Int32" QueryStringField="bid" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
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
