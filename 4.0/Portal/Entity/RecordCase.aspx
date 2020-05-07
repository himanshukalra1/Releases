<%@ Page Language="C#" CodeBehind="RecordCase.aspx.cs" AutoEventWireup="false" Inherits="GMPortal.Entity.RecordCase"
    MasterPageFile="~/Master.Master" %>

<%@ Import Namespace="GMConstants" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Text" Src="~/Controls/Text.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Text2" Src="~/Controls/Text2.ascx" %>
<%@ Register TagPrefix="ctl" TagName="DDown" Src="~/Controls/Dropdown.ascx" %>
<%@ Register TagPrefix="ctl" TagName="DDown2" Src="~/Controls/Dropdown2.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Check" Src="~/Controls/Checkbox.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
    <asp:ScriptManager ID="smRDComments" runat="server" EnablePartialRendering="true">
    </asp:ScriptManager>
    <table border="0" style="vertical-align: top; text-align: center;">
        <ctl:PageTitle ID="pgTitle" runat="server" Label="Record Detail" />
        <tr align="center">
            <td align="center">
                <table style="width: 72%;">
                    <tr>
                        <td>
                            <table>
                                <ctl:DDown ID="ddlCompanyID" runat="server" Label="Company:" Required="false" />
                                <ctl:Text ID="txtReceivedDate" runat="server" Label="Received Date:" Required="false"
                                    Width="200" ValidationType="Date" />
                                <ctl:Text ID="txtSentDate" runat="server" Label="Sent Date:" Required="false" Width="200"
                                    ValidationType="Date" />
                                <ctl:Text ID="txtCustomerRefNo" runat="server" Label="Customer Ref No:" Required="false"
                                    Width="200" />
                                <ctl:Text ID="txtLeadNo" runat="server" Label="Lead No:" Required="false" Width="200" />
                                <ctl:DDown ID="ddlRecordStatusID" runat="server" Label="Status:" Required="false" />
                                <ctl:DDown ID="ddlActionID" runat="server" Label="Action:" Required="false" OnClientChange="managevendor();" />
                                <ctl:DDown ID="ddlVendorID" runat="server" Label="Vendor Name:" Required="false" />
                                <ctl:DDown ID="ddlContactTypeID" runat="server" Label="Contact Type:" Required="false" />
                                <ctl:Text ID="txtClientRemarks" runat="server" Label="Client Remarks:" Required="false"
                                    Width="200" TextMode="MultiLine" Height="70" />
                                <ctl:Text ID="txtClientSplRemarks" runat="server" Label="Client Spl Remarks:" Required="false"
                                    Width="200" TextMode="MultiLine" Height="70" />
                            </table>
                        </td>
                        <td valign="top">
                            <table>
                                <ctl:Text ID="txtName" runat="server" Label="Name:" Required="true" Width="200" />
                                <ctl:Text ID="txtDOB" runat="server" Label="DOB:" Required="true" Width="200" ValidationType="Date" />
                                <ctl:DDown ID="ddlStateID" runat="server" Required="true" Label="State:" HasAjax="true" />
                                <ctl:DDown ID="ddlCountyID" runat="server" Label="County:" Required="true" Width="200" />
                                <ctl:DDown ID="ddlCaseTypeID" runat="server" Label="Case Type:" Required="true" />
                                <ctl:Text ID="txtYears" runat="server" Label="Years:" Required="true" Width="200"
                                    ValidationType="Number" />
                                <ctl:Text ID="txtSSN" runat="server" Label="SSN:" Required="false" Width="200"/>
                                <ctl:Text ID="txtPrintCost" runat="server" Label="Print Cost:" Required="false" Width="200"
                                    Blur="calculatetotalcost();" ValidationType="DecimalNumber" />
                                <ctl:Text ID="txtNoOfPages" runat="server" Label="No Of Pages:" Required="false"
                                    Blur="calculatetotalcost();" Width="200" ValidationType="Number" />
                                <ctl:Text ID="txtTotalCost" runat="server" Label="Total Cost: $" Required="false"
                                    Width="200" ReadOnly="true" />
                                <ctl:Text ID="txtCourtFee" runat="server" Label="Court Fee: $" Required="false" Width="200"
                                    ValidationType="DecimalNumber" />
                                <ctl:Text ID="txtSpecialFee" runat="server" Label="Special Fee: $" Required="false" Width="200"
                                    ValidationType="DecimalNumber" />
                                <ctl:Text ID="txtRISComments" runat="server" Label="RIS Remarks:" Required="false"
                                    Width="200" TextMode="MultiLine" Height="70" />
                            </table>
                        </td>
                        <td valign="top">
                            <table>
                                <tr>
                                    <td class="Bold">Record History
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="grvHistory" runat="server" ShowFooter="false" AutoGenerateColumns="false"
                                            HeaderStyle-CssClass="GridHeader" AlternatingRowStyle-CssClass="GridAltItem"
                                            Width="320">
                                            <Columns>
                                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                                <asp:BoundField DataField="CreatedDate" HeaderText="Date" />
                                                <asp:BoundField DataField="By" HeaderText="By" />
                                            </Columns>
                                        </asp:GridView>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:UpdatePanel ID="upAddComments" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <ctl:Button ID="btnAddComments" Text="Add Comments" runat="server" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:UpdatePanel ID="upRDComments" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <asp:GridView ID="grvComments" runat="server" ShowFooter="false" DataKeyNames="ID"
                                                    OnRowUpdating="OnUpdate" AutoGenerateColumns="false" OnRowCancelingEdit="OnCancel"
                                                    HeaderStyle-CssClass="GridHeader" AlternatingRowStyle-CssClass="GridAltItem" Width="320">
                                                    <Columns>
                                                        <asp:TemplateField ItemStyle-Width="200" HeaderText="Comments">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblComments" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <EditItemTemplate>
                                                                <ctl:Text2 ID="txtComments" runat="server" Value='<%# Bind("Description") %>' TextMode="MultiLine"
                                                                    Width="160" />
                                                            </EditItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Created" ReadOnly="true" />
                                                        <asp:BoundField DataField="User" HeaderText="By" ReadOnly="true" />
                                                        <asp:CommandField ShowEditButton="true" ItemStyle-Width="80px" />
                                                    </Columns>
                                                </asp:GridView>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="btnAddComments" EventName="Click" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <ctl:Button ID="btnSave" Text="Save" runat="server" />
                            <ctl:Button ID="btnAddCase" Text="Add Case" runat="server" CausesValidation="false" />
                            <ctl:Button ID="btnCancel" Text="Cancel" runat="server" CausesValidation="false" />
                            <asp:HiddenField ID="hdnIsCivil" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="Bold" align="left">Case Pipeline
                        </td>
                    </tr>
                    <tr>
                        <td colspan="100%" align="right">
                            <asp:HiddenField ID="hdnRecordId" runat="server" />
                            <asp:GridView ID="grdCase" CssClass="gridTable" HeaderStyle-CssClass="GridHeader"
                                DataKeyNames="ID" RowStyle-CssClass="GridItem" AlternatingRowStyle-CssClass="GridAltItem"
                                runat="server" AutoGenerateColumns="False" DataSourceID="odsRecordCaseData">
                                <Columns>
                                    <asp:TemplateField HeaderText="Case #">
                                        <ItemTemplate>
                                            <a href='<%# GetRedirectURL(UIConstants.CaseAspx ,QueryStringConstants.CaseID , Eval("ID"),QueryStringConstants.RecordID , Eval("RecordID"))%>'>
                                                <%# Eval("CaseNumber") %></a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="ViolationDate" HeaderText="Violation Date" DataFormatString="{0:MM/dd/yyyy}"
                                        HtmlEncode="false" />
                                    <asp:BoundField DataField="FileDate" HeaderText="File Date" DataFormatString="{0:MM/dd/yyyy}"
                                        HtmlEncode="false" />
                                    <asp:BoundField DataField="DispoDate" HeaderText="Dispo Date" DataFormatString="{0:MM/dd/yyyy}"
                                        HtmlEncode="false" />
                                    <asp:BoundField DataField="CaseCount" HeaderText="Count" />
                                    <asp:BoundField DataField="ProbationType" HeaderText="Probation Type" />
                                    <asp:BoundField DataField="FileFee" HeaderText="Fine/Fee" />
                                    <asp:BoundField DataField="Restitution" HeaderText="Restitution" />
                                    <asp:BoundField DataField="DistrictCourt" HeaderText="District Court" />
                                    <asp:BoundField DataField="CaseTypeLevel" HeaderText="Case Type Level" />
                                    <asp:BoundField DataField="CaseName" HeaderText="Case Name" />
                                    <asp:BoundField DataField="Plaintiff" HeaderText="Plaintiff" />
                                    <asp:BoundField DataField="Defendant" HeaderText="Defendant" />
                                    <asp:BoundField DataField="StatusJudgment" HeaderText="Status/Judgmentl" />
                                    <asp:TemplateField ItemStyle-Width="48px">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkDelete" runat="server" OnClientClick="return confirm('Are you sure to delete this record case?');"
                                                CommandName="Delete">Delete</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <asp:ObjectDataSource ID="odsRecordCaseData" runat="server" SelectMethod="GetRecordCaseData"
                                TypeName="GMUIBinder.Entity.RecordSearchUB" DeleteMethod="OnDelete">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="hdnRecordId" DefaultValue="" Name="RecordId" Type="Int32" />
                                </SelectParameters>
                                <DeleteParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </DeleteParameters>
                            </asp:ObjectDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <script type="text/javascript" src="../Script/StateCounty.js"></script>
    <script language="javascript" type="text/javascript">
        var printcost = getelement("<%=txtPrintCost.Instance.ClientID%>");
        var nopages = getelement("<%=txtNoOfPages.Instance.ClientID%>");
        var totalcost = getelement("<%=txtTotalCost.Instance.ClientID%>");
        var action = getelement("<%=ddlActionID.Instance.ClientID%>");
        var vendor = getelement("<%=ddlVendorID.Instance.ClientID%>");
        $(function () {
            $('#' + '<%=ddlStateID.Instance.ClientID%>').synccounty('<%=ddlCountyID.Instance.ClientID%>', '<%= ResolveUrl("~/Default.aspx/GetCounties") %>');
        });
    </script>
    <script language="javascript" type="text/javascript" src="../Script/RecordDetail.js"></script>
</asp:Content>
