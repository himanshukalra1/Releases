<%@ Page Language="c#" AutoEventWireup="false" Codebehind="Default.aspx.cs" Inherits="GMPortal.Default"
    MasterPageFile="~/Master.Master" %>

<%@ Register TagPrefix="ctl" TagName="PageTitle" Src="~/Controls/Pagetitle.ascx" %>
<asp:Content ContentPlaceHolderID="cphMaster" ID="cnPage" runat="server">
    <table>
        <tr>
            <td>
                <ctl:PageTitle ID="pgTitle" runat="server" Label="Welcome" /></td>
        </tr>
        <tr>
            <td align="left" valign="top">
                • UNESCWA will cover the fees of travel and participation according to UN rules
                and regulations. <br />
                • UNESCWA will make the travel arrangements and will inform the
                participants of their respective travel details. <br />
                • Participants are advised to retain. <br /> 
                the original air tickets stubs (or e-ticket receipt and itinerary if applicable)
                and boarding passes for administrative and financial purposes. <br />
                • Completed registration, form filled in English and Arabic (see attached) <br />
                • Copy of valid passport.</td>
        </tr>
    </table>
</asp:Content>
