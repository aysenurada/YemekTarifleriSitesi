<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="YemekTarifleriWebSite.Anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
            font-family: "Segoe UI";
            padding: 7px;
        }
        .auto-style7 {
            background-color: #FFFF99;
        }
        .auto-style8 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <a href="YemekDetay.aspx?YemekID=<%# Eval("YemekID") %>">
                        <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: x-large; color: black; font-family: 'Segoe UI';" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </a></td>


                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Yemek Tarifi: </strong>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong><em>Eklenme Tarihi: </em></strong><em><strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        </strong></em><strong>&nbsp; </strong>-<strong>&nbsp; <em>Puan:
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </em></strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
