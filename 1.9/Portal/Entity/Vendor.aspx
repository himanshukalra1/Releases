<%@ Page Language="C#" CodeBehind="Vendor.aspx.cs" AutoEventWireup="false" Inherits="GMPortal.Entity.Vendor"
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
    <asp:ScriptManager ID="smCountyRate" runat="server" EnablePartialRendering="true">
    </asp:ScriptManager>
    <table border="0" style="vertical-align: top; text-align: center;">
        <ctl:PageTitle ID="pgTitle" runat="server" Label="Vendor Settings" />
        <tr align="center">
            <td align="center">
                <table style="width: 50%;">
                    <tr>
                        <td>
                            <table>
                                <ctl:Text ID="txtName" runat="server" Label="Vendor Name:" Required="true" Width="200" />
                                <ctl:Text ID="txtAddressL1" runat="server" Label="Address L1:" Required="false" Width="200" />
                                <ctl:Text ID="txtAddressL2" runat="server" Label="Address L2:" Required="false" Width="200" />
                                <ctl:Text ID="txtCity" runat="server" Label="City:" Required="false" Width="200" />
                                <ctl:DDown ID="ddlStateID" runat="server" Label="State:" Required="true" />
                                <ctl:Text ID="txtPostalCode" runat="server" Label="Postal Code:" Required="true"
                                    ValidationType="Pincode" Width="200" />
                                <ctl:Text ID="txtContactPerson" runat="server" Label="Contact Person:" Required="true"
                                    Width="200" />
                                <ctl:Text ID="txtPhone" runat="server" Label="Contact No:" Required="true" Width="200"
                                    ValidationType="CellPhone" />
                                <ctl:Text ID="txtFax" runat="server" Label="Fax:" Required="false" Width="200" ValidationType="CellPhone" />
                                <ctl:Text ID="txtEmail" runat="server" Label="E-Mail:" Required="true" Width="200"
                                    ValidationType="EMail" />
                                <ctl:Check ID="chkActive" runat="server" Text="Active" />
                            </table>
                        </td>
                        <td valign="top">
                            <table>
                                <ctl:DDown ID="ddlPaymentID" runat="server" Label="Payment Type:" Required="false" />
                                <ctl:Text ID="txtGracePeriod" runat="server" Label="Grace Period:" Required="false"
                                    ValidationType="Number" Width="200" />
                                <ctl:Text ID="txtComments" runat="server" Label="Comments:" Required="false" Width="200"
                                    TextMode="MultiLine" />
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:UpdatePanel ID="upAddCountyRate" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <ctl:Button ID="btnAddCounty" Text="Add County" runat="server" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:UpdatePanel ID="upCountyRate" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <asp:GridView ID="grvCountyRate" runat="server" ShowFooter="false" DataKeyNames="ID" AutoGenerateColumns="false" OnRowCancelingEdit="OnCancel" 
                                                    OnRowDeleting="OnDelete" OnRowEditing="OnEdit" OnRowUpdating="OnUpdate" HeaderStyle-CssClass="GridHeader" AlternatingRowStyle-CssClass="GridAltItem">
                                                    <Columns>
                                                        <asp:TemplateField ItemStyle-Width="136px" HeaderText="County Assigned">
                                                            <ItemTemplate>
                                                                <ctl:DDown2 ID="ddlCountyIDRead" runat="server" Width="80" DataTextField="Name" DataValueField="ID" Enabled="false" DataSource='<%# Bind("DSCountyID") %>' Value='<%# Bind("CountyID") %>' /></ItemTemplate>
                                                            <EditItemTemplate>
                                                                <ctl:DDown2 ID="ddlCountyID" runat="server" Width="80" DataTextField="Name" DataValueField="ID" DataSource='<%# Bind("DSCountyID") %>' Value='<%# Bind("CountyID") %>' 
                                                                    Enabled='<%# HasPermission(GMUIDetail.Enums.Permission.EditCounty) %>' />
                                                            </EditItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField ItemStyle-Width="64px" HeaderText="Rate">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblRate" runat="server" Text='<%# Bind("Rate") %>'></asp:Label></ItemTemplate>
                                                            <EditItemTemplate>
                                                                <ctl:Text2 ID="txtRate" runat="server" Value='<%# Bind("Rate") %>' ValidationType="DecimalNumber" Width="40" />
                                                            </EditItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:CommandField ShowEditButton="true"  ItemStyle-Width="80px" />
                                                        <asp:TemplateField ItemStyle-Width="48px">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="lnkDelete" runat="server" OnClientClick="return confirm('Are you sure to delete this county rate?');" Visible = '<%# Eval("ID") == null ? false:true %>'
                                                                    CommandName="Delete">Delete</asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="btnAddCounty" EventName="Click" />
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
                            <ctl:Button ID="btnDelete" Text="Delete" runat="server" CausesValidation="false" OnClientClick="return confirm('Are you sure to delete this vendor?');" />
                            <ctl:Button ID="btnCancel" Text="Cancel" runat="server" CausesValidation="false" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
