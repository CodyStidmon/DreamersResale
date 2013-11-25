<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="DreamersResale.AddItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
   
                    <asp:Label ID="Label1" runat="server" Text="Consignor" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="cosign" Height="20px" Width="200px"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" Text="Description" Font-Bold="true" Font-Italic="true" Font-Size="15px"></asp:Label>
                    <asp:TextBox runat="server" ID="Description" Height="28px" Width="200px"></asp:TextBox>
                    <br />
                    <asp:Button ID="Addbutton" runat="server" Text="Add Item" OnClick="Addbutton_Click" />
                    <asp:Label ID="Label5" runat="server" Font-Bold="true" Font-Italic="true" Font-Size="15px" Text="ITEM ID:"></asp:Label>
                    <asp:Label ID="itemnumber" runat="server" Font-Bold="true" Font-Italic="true" Font-Size="15px" Text="ITEM ID:"></asp:Label>
                    </asp:Content>
