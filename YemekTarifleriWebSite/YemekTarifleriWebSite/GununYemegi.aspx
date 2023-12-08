<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifleriWebSite.GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="447px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label8" runat="server" Style="font-size: x-large; font-weight: 700" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Tarif:</strong>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="Image2" runat="server" Height="243px" ImageUrl="~/Resimler/mucver.jpg" Width="350px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Puan: </strong>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi:</strong>&nbsp;<asp:Label ID="Label13" runat="server" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
