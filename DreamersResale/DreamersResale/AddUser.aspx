<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="DreamersResale.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table id="Table1" runat="server" border="0" visible="true">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="FIRST NAME" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" Height="20px" Width="200px" ID="firstNameTextBox"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:Label ID="Label18" runat="server" Text="LAST NAME" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox ID="lastNameTextBox" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:Label ID="Label2" runat="server" Text="BIDDER NO" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="bidderNumberTextBox" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="Label3" runat="server" Text="FIRM" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="firmTextBox" Height="20px" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="Label4" runat="server" Text="ADDRESS" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="addressTextBox" Height="20px" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label5" runat="server" Text="CITY" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="cityTextBox" Height="20px" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="STATE" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="stateTextBox" Height="20px" Width="100px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="ZIP" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="zipTextBox" Height="20px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label8" runat="server" Text="OFFICE PHONE" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="workPhoneTextBox" Height="20px" Width="150px"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:Label ID="Label9" runat="server" Text="HOME" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="homePhoneTextBox" Height="20px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label10" runat="server" Text="DRIVERS LICENSE NO" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="driversLicenseNumberTextBox" Height="20px" Width="300px"></asp:TextBox>
                </td>
                <td colspan="1">
                    <asp:Label ID="Label11" runat="server" Text="STATE" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="driversLicenseStateTextBox" Height="20px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label12" runat="server" Text="SALES TAX NO" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="salesTaxNumberTextBox" Height="20px" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label13" runat="server" Text="BANK" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="bankTextBox" Height="20px" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="Label14" runat="server" Text="OTHER" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="other" Height="20px" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="Label15" runat="server" Text="I LEARNED OF THIS AUCTION FROM" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="referral" Height="20px" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label16" runat="server" Text="I WILL PAY BY" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:RadioButton runat="server" ID="radio_cash" Text="CASH" GroupName="payment_method" Width="60" Height="20px"></asp:RadioButton>
                    <asp:RadioButton runat="server" ID="radio_check" Text="CHECK" GroupName="payment_method" Width="60" Height="20px"></asp:RadioButton>
                    <asp:RadioButton runat="server" ID="radio_other" Text="OTHER" GroupName="payment_method" Width="60" Height="20px"></asp:RadioButton>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:CheckBox runat="server" ID="contact_me" Text="I HAVE PROPERTY TO SELL." GroupName="payment_method" Font-Bold="true" Font-Italic="true" Font-Size="15px" Height="20px"></asp:CheckBox>
                    <asp:Label runat="server" ID="Label17" Text="PLEASE CONTACT ME ON" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="contact_date" Height="20px" Width="200px"></asp:TextBox>
                    <asp:Button ID="Add" runat="server" OnClick="Add_Click" Text="Add" />
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
