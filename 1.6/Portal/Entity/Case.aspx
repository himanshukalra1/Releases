<%@ Page Language="C#" CodeBehind="Case.aspx.cs" AutoEventWireup="false" Inherits="GMPortal.Entity.Case"
    MasterPageFile="~/Master.Master" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register TagPrefix="ctl" TagName="Button" Src="~/Controls/Button.ascx" %>
<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Text" Src="~/Controls/Text.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Text2" Src="~/Controls/Text2.ascx" %>
<%@ Register TagPrefix="ctl" TagName="DDown" Src="~/Controls/Dropdown2.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Check" Src="~/Controls/Checkbox.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
    <asp:ScriptManager ID="smCaseRecord" runat="server" EnablePartialRendering="true">
    </asp:ScriptManager>
    <table border="0" style="vertical-align: top; text-align: center;">
        <ctl:PageTitle ID="pgTitle" runat="server" Label="Case Detail" />
        <tr align="center">
            <td align="center">
                <table style="width: 50%;">
                    <tr>
                        <td valign="top">
                            <table>
                                <ctl:Text ID="txtName" runat="server" Label="Client Name:" Width="140" ReadOnly="true" />
                                <ctl:Text ID="txtCounty" runat="server" Label="County:" Width="140" ReadOnly="true" />
                                <ctl:Text ID="txtID" runat="server" Label="RIS REF #:" Width="140" ReadOnly="true" />
                                <ctl:Text ID="txtNameFound" runat="server" Label="Name Found:" Required="true" Width="140" />
                                <ctl:Text ID="txtCaseNumber" runat="server" Label="Case #:" Required="true" Width="140" />
                                <ctl:Text ID="txtDOBFound" runat="server" Label="DOB Found:" Width="140" ValidationType="Date"
                                    Required="true" />
                                <ctl:Text ID="txtCaseName" runat="server" Label="Case Name:" Required="false" Width="140" />
                                <ctl:Text ID="txtPlaintiff" runat="server" Label="Plaintiff:" Required="false" Width="140" />
                            </table>
                        </td>
                        <td valign="top">
                            <table>
                                <ctl:Text ID="txtCustomerRefNo" runat="server" Label="Client REF#:" Width="140" ReadOnly="true" />
                                <ctl:Text ID="txtCaseType" runat="server" Label="Case Type:" Width="140" ReadOnly="true" />
                                <ctl:Text ID="txtAlias" runat="server" Label="Alias:" Required="false" Width="140" />
                                <ctl:Text ID="txtViolationDate" runat="server" Label="Violation Date:" Required="false"
                                    Width="140" ValidationType="Date" />
                                <ctl:Text ID="txtFileDate" runat="server" Label="File Date:" Required="false" Width="140"
                                    ValidationType="Date" />
                                <ctl:Text ID="txtDispoDate" runat="server" Label="Dispo Date:" Required="false" Width="140"
                                    ValidationType="Date" />
                                <ctl:Text ID="txtDistrictCourt" runat="server" Label="District Court:" Required="false"
                                    Width="140" />
                                <ctl:Text ID="txtCaseTypeLevel" runat="server" Label="Case Type Level:" Required="false"
                                    Width="140" />
                                <ctl:Text ID="txtDefendant" runat="server" Label="Defendant:" Required="false" Width="140" />
                                <ctl:Text ID="txtStatusJudgment" runat="server" Label="Status/Judgment:" Required="false"
                                    Width="140" />
                            </table>
                        </td>
                        <td valign="top">
                            <table>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lblSentencingDetails" runat="server" Text="Sentencing Details" CssClass="Bold"></asp:Label>
                                    </td>
                                </tr>
                                <ctl:Text ID="txtProbationType" runat="server" Label="Probation Type:" Width="140" />
                                <ctl:Text ID="txtRestitution" runat="server" Label="Restitution:" Width="140" />
                                <ctl:Text ID="txtSentencingDetail" runat="server" Label="Sentencing Details:" Required="false"
                                    Width="250" TextMode="MultiLine" Height="80" />
                            </table>
                        </td>
                        <td valign="top">
                            <table>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <ctl:Text ID="txtFileFee" runat="server" Label="Fine/Fee:" Width="140" ValidationType="DecimalNumber" />
                                <ctl:Text ID="txtJailCredit" runat="server" Label="Jail/Prision Credit:" Width="140" />
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" align="left">
                            <asp:UpdatePanel ID="upAddCaseRecord" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <ctl:Button ID="btnAddCaseRecord" Text="Add" runat="server" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:UpdatePanel ID="upCaseRecord" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:GridView ID="grvCaseRecord" runat="server" ShowFooter="false" DataKeyNames="ID"
                                        AutoGenerateColumns="false" OnRowCancelingEdit="OnCancel" OnRowDeleting="OnDelete"
                                        OnRowEditing="OnEdit" OnRowUpdating="OnUpdate" HeaderStyle-CssClass="GridHeader"
                                        AlternatingRowStyle-CssClass="GridAltItem">
                                        <Columns>
                                            <asp:TemplateField ItemStyle-Width="32px" HeaderText="Count">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblIndex" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-Width="192px" HeaderText="Description">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblDescription" runat="server" Text='<%# Bind("Description") %>'></asp:Label></ItemTemplate>
                                                <EditItemTemplate>
                                                    <ctl:Text2 ID="txtDescription" runat="server" Value='<%# Bind("Description") %>'
                                                        Width="180" Required="true" ValidationMessage="Description" />
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-Width="48px" HeaderText="Level">
                                                <ItemTemplate>
                                                    <ctl:DDown ID="ddlLevelRead" runat="server" Width="36" DataTextField="Name" DataValueField="ID"
                                                        Enabled="false" DataSource='<%# Bind("DSLevelTypeID") %>' Value='<%# Bind("LevelTypeID") %>' />
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <ctl:DDown ID="ddlLevel" runat="server" Width="36" DataTextField="Name" DataValueField="ID" Required="true" ValidationMessage="Level" HasEmpty="true"
                                                        DataSource='<%# Bind("DSLevelTypeID") %>' Value='<%# Bind("LevelTypeID") %>' />
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-Width="48px" HeaderText="Plea">
                                                <ItemTemplate>
                                                    <ctl:DDown ID="ddlPleaRead" runat="server" Width="36" DataTextField="Name" DataValueField="ID"
                                                        Enabled="false" DataSource='<%# Bind("DSPleaTypeID") %>' Value='<%# Bind("PleaTypeID") %>' />
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <ctl:DDown ID="ddlPlea" runat="server" Width="36" DataTextField="Name" DataValueField="ID" Required="true" ValidationMessage="Plea" HasEmpty="true"
                                                        DataSource='<%# Bind("DSPleaTypeID") %>' Value='<%# Bind("PleaTypeID") %>' />
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-Width="48px" HeaderText="Disposition">
                                                <ItemTemplate>
                                                    <ctl:DDown ID="ddlDispositionRead" runat="server" Width="36" DataTextField="Name"
                                                        DataValueField="ID" Enabled="false" DataSource='<%# Bind("DSDispositionTypeID") %>'
                                                        Value='<%# Bind("DispositionTypeID") %>' />
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <ctl:DDown ID="ddlDisposition" runat="server" Width="36" DataTextField="Name" DataValueField="ID" Required="true" ValidationMessage="Disposition" HasEmpty="true"
                                                        DataSource='<%# Bind("DSDispositionTypeID") %>' Value='<%# Bind("DispositionTypeID") %>' />
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:CommandField ShowEditButton="true" ItemStyle-Width="80px" />
                                            <asp:TemplateField ItemStyle-Width="48px">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnkDelete" runat="server" OnClientClick="return confirm('Are you sure to delete this case?');"
                                                        CausesValidation="false" Visible='<%# Eval("ID") == null ? false:true %>' CommandName="Delete">Delete</asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btnAddCaseRecord" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <ctl:Button ID="btnSave" Text="Save" runat="server" OnClientClick="return checkdate();" />
                            <ctl:Button ID="btnCancel" Text="Cancel" runat="server" CausesValidation="false" />
                            <asp:HiddenField ID="hdnIsCivil" runat="server" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <script language="javascript" type="text/javascript">
        var violationdate = getelement("<%=txtViolationDate.Instance.ClientID%>");
        var filedate = getelement("<%=txtFileDate.Instance.ClientID%>");
        var dispodate = getelement("<%=txtDispoDate.Instance.ClientID%>");
    </script>
    <script language="javascript" type="text/javascript" src="../Script/CaseDetail.js"></script>
</asp:Content>
