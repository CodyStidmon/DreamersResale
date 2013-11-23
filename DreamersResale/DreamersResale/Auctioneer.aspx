<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Auctioneer.aspx.cs" Inherits="DreamersResale.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div>
        <table id="Table1" runat="server" border="0" visible="true">
            <tr>
                <td colspan="1">
                    <asp:Label runat="server" Text="" Width="200px" Height ="30px" ID ="Label1"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:Label runat="server" Text="ITEM ID" Font-Bold ="true"  Width="200px" Height="30px" ID ="Label2"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="1">
                    <asp:Button  runat="server"  Text="GET ITEM" Width ="200px" Height ="30px" ID ="get_item" OnClick="get_item_Click" />
                </td>
                <td colspan="1">
                    <asp:TextBox  runat="server" Font-Size ="15px" ID ="item_to_get" Height="20px" Width ="200px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table id="Table2" runat="server" border="0" visible="true">
            <tr>
                <td colspan="1">
                    <asp:Label runat="server" Text="ItemID" Font-Bold ="true" Width="200px" Height ="30px" ID ="Label3"></asp:Label>
                </td>
                <td colspan="1">
                    <asp:Label runat="server" Text="Description" Font-Bold ="true"  Width="200px" Height="30px" ID ="Label4"></asp:Label>
                </td>
                <td colspan="1">
                    <asp:Label runat="server" Text="Bidder" Font-Bold ="true" Width="200px" Height ="30px" ID ="Label5"></asp:Label>
                </td>
                <td colspan="1">
                    <asp:Label runat="server" Text="BidAmount" Font-Bold ="true"  Width="200px" Height="30px" ID ="Label6"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="1">
                    <asp:TextBox  runat="server" Font-Size ="15px" ID ="txtItemID" Height="20px" Width ="200px"></asp:TextBox>
                </td>
                <td colspan="1">
                    <asp:TextBox  runat="server" Font-Size ="15px" ID ="txtDescription" Height="20px" Width ="200px"></asp:TextBox>
                </td>
                <td colspan="1">
                    <asp:TextBox  runat="server" Font-Size ="15px" ID ="txtBidder" Height="20px" Width ="200px"></asp:TextBox>
                </td>
                <td colspan="1">
                    <asp:TextBox  runat="server" Font-Size ="15px" ID ="txtBidAmount" Height="20px" Width ="200px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>