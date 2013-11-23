<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="DreamersResale.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table runat="server" border="0" visible="true">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="BUYER NAME" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="name" Height="20px" Width="200px"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:Label ID="Label2" runat="server" Text="BIDDER NO" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="bidder_no" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="Label3" runat="server" Text="FIRM" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="firm" Height="20px" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="Label4" runat="server" Text="ADDRESS" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="address" Height="20px" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label5" runat="server" Text="CITY" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="city" Height="20px" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="STATE" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="state" Height="20px" Width="100px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="ZIP" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="zip" Height="20px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label8" runat="server" Text="OFFICE PHONE" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="office_phone" Height="20px" Width="150px"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:Label ID="Label9" runat="server" Text="HOME" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="home_phone" Height="20px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label10" runat="server" Text="DRIVERS LICENSE NO" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="drivers_license" Height="20px" Width="300px"></asp:TextBox>
                </td>
                <td colspan="1">
                    <asp:Label ID="Label11" runat="server" Text="STATE" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="license_state" Height="20px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label12" runat="server" Text="SALES TAX NO" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="sales_tax" Height="20px" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label13" runat="server" Text="BANK" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="bank" Height="20px" Width="400px"></asp:TextBox>
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
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
