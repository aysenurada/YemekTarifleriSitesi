<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifleriWebSite.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            font-weight: bold;
            margin-left: 52px;
            border-radius: 2px;
            cursor: pointer;
            font-size: medium;
        }
        .auto-style6 {
            height: 44px;
        }
        .auto-style7 {
            text-align: right;
            font-weight: bold;
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Tarif Adı:</strong></td>
            <td>
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Yapılışı:</strong></td>
            <td>
                <asp:TextBox ID="TxtYapilisi" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Yemek Görseli:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="textbox" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Tarifi Öneren:</strong></td>
            <td>
                <asp:TextBox ID="TxtTarifiOneren" runat="server" Width="250px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="250px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6"><strong>
                <asp:Button ID="BtnTarifOner" runat="server" BackColor="#FFCC66" CssClass="auto-style5" Height="40px" Text="Tarif Öner" Width="150px" OnClick="BtnTarifOner_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
