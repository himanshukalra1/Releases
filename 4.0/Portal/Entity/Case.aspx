<%@ Page Language="C#" CodeBehind="Case.aspx.cs" AutoEventWireup="false" Inherits="GMPortal.Entity.Case"
    MasterPageFile="~/Master.Master" %>

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
                                <ctl:Text ID="txtDistrictCourt" runat="server" Label="Court:" Required="false" Width="140" TextMode="MultiLine" />
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
                                <ctl:Text ID="txtAdditionalIdentifier" runat="server" Label="Additional Identifier" Required="false" Width="140" />
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
                                <ctl:Text ID="txtProbationType" runat="server" Label="Probation Type:" Width="140" Enabled="false" />
                                <ctl:Text ID="txtRestitution" runat="server" Label="Restitution:" Width="140" ValidationType="DecimalNumber" Enabled="false" />
                                <ctl:Text ID="txtSentencingDetail" runat="server" Label="Sentencing Details:" Required="false" Enabled="true"
                                    Width="250" TextMode="MultiLine" Height="80" />
                            </table>
                        </td>
                        <td valign="top">
                            <table>
                                <tr>
                                    <td>&nbsp;
                                    </td>
                                </tr>
                                <ctl:Text ID="txtFileFee" runat="server" Label="Fine/Fee:" Width="140" ValidationType="DecimalNumber" Enabled="false" />
                                <ctl:Text ID="txtJailCredit" runat="server" Label="Jail/Prision Credit:" Width="140" Enabled="false" />
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                           <table>
                                <ctl:Text ID="txtStreetName" runat="server" Label="Street Name:" Width="140" />
                                <ctl:Text ID="txtAddress2" runat="server" Label="Address2:" Width="140" />
                                <ctl:Text ID="txtCity" runat="server" Label="City:" Width="140" />
                                <ctl:DDown ID="ddlStateID" runat="server" Label="State:" Required="false"/>
                                <ctl:Text ID="txtZipCode" runat="server" Label="Zip Code:" Width="140" />
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
                                            <asp:TemplateField ItemStyle-Width="90px" HeaderText="Description">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblDescription" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <ctl:Text2 ID="txtDescription" runat="server" Value='<%# Bind("Description") %>'
                                                        Width="140" Required="true" ValidationMessage="Description" TextMode="MultiLine" />
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-Width="48px" HeaderText="Level">
                                                <ItemTemplate>
                                                    <ctl:DDown2 ID="ddlLevelRead" runat="server" DataTextField="Name" DataValueField="ID"
                                                        Enabled="false" DataSource='<%# Bind("DSLevelTypeID") %>' Value='<%# Bind("LevelTypeID") %>' />
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <ctl:DDown2 ID="ddlLevel" runat="server" DataTextField="Name" DataValueField="ID" Required="true" ValidationMessage="Level" HasEmpty="true"
                                                        DataSource='<%# Bind("DSLevelTypeID") %>' Value='<%# Bind("LevelTypeID") %>' />
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-Width="48px" HeaderText="Plea">
                                                <ItemTemplate>
                                                    <ctl:DDown2 ID="ddlPleaRead" runat="server" DataTextField="Name" DataValueField="ID"
                                                        Enabled="false" DataSource='<%# Bind("DSPleaTypeID") %>' Value='<%# Bind("PleaTypeID") %>' />
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <ctl:DDown2 ID="ddlPlea" runat="server" DataTextField="Name" DataValueField="ID" Required="true" ValidationMessage="Plea" HasEmpty="true"
                                                        DataSource='<%# Bind("DSPleaTypeID") %>' Value='<%# Bind("PleaTypeID") %>' />
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-Width="48px" HeaderText="Disposition">
                                                <ItemTemplate>
                                                    <ctl:DDown2 ID="ddlDispositionRead" runat="server" DataTextField="Name"
                                                        DataValueField="ID" Enabled="false" DataSource='<%# Bind("DSDispositionTypeID") %>'
                                                        Value='<%# Bind("DispositionTypeID") %>' />
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <ctl:DDown2 ID="ddlDisposition" runat="server" DataTextField="Name" DataValueField="ID" Required="true" ValidationMessage="Disposition" HasEmpty="true"
                                                        DataSource='<%# Bind("DSDispositionTypeID") %>' Value='<%# Bind("DispositionTypeID") %>' />
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-Width="48px" HeaderText="Probation Type">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblProbationType" runat="server" Text='<%# Bind("ProbationType") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <ctl:Text2 ID="txtProbationType" runat="server" Value='<%# Bind("ProbationType") %>' />
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-Width="48px" HeaderText="Arresting Agency">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblArrestingAgency" runat="server" Text='<%# Bind("ArrestingAgency") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <ctl:Text2 ID="txtArrestingAgency" runat="server" Value='<%# Bind("ArrestingAgency") %>' TextMode="MultiLine" Height="50" />
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-Width="48px" HeaderText="Fine/Fee $">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblFileFee" runat="server" Text='<%# Bind("FileFee") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <ctl:Text2 ID="txtFileFee" runat="server" Value='<%# Bind("FileFee") %>' ValidationType="DecimalNumber" />
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-Width="48px" HeaderText="Restitution">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblRestitution" runat="server" Text='<%# Bind("Restitution") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <ctl:Text2 ID="txtRestitution" runat="server" Value='<%# Bind("Restitution") %>' ValidationType="DecimalNumber" />
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-Width="48px" HeaderText="Jail Credit">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblJailCredit" runat="server" Text='<%# Bind("JailCredit") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <ctl:Text2 ID="txtJailCredit" runat="server" Value='<%# Bind("JailCredit") %>' TextMode="MultiLine" Height="50" />
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-Width="180px" HeaderText="Sentencing Detail" ItemStyle-HorizontalAlign="Left">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSentencingDetail" runat="server" Text='<%# Eval("SentencingDetail").ToString().Replace("\n","<br/>") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <ctl:Text2 ID="txtSentencingDetail" runat="server" Value='<%# Eval("SentencingDetail") %>' TextMode="MultiLine"
                                                        Width="180" Height="50" />
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-Width="180px" HeaderText="Sentencing Date">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSentencingDate" runat="server" Text='<%# Convert.ToDateTime(Eval("SentencingDate"))!= DateTime.MinValue?Convert.ToDateTime(Eval("SentencingDate")).ToShortDateString():"" %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <ctl:Text2 ID="txtSentencingDate" runat="server" Value='<%# Eval("SentencingDate") %>' ValidationType="Date" Required="false" />
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
