<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifleriWebSite.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            font-size: large;
            text-align: right;
        }
        .auto-style8 {
            font-weight: bold;
            font-size: medium;
            cursor: pointer;
            border: none;
            border-radius: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Ad-Soyad:</strong></td>
            <td>
                <asp:TextBox ID="TxtAd" runat="server" Height="30px" Width="250px" BorderStyle="None" style="border-radius: 2px;" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" Height="30px" Width="250px" BorderStyle="None" style="border-radius: 2px;" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>İçerik:</strong></td>
            <td>
                <asp:TextBox ID="TxtIcerik" runat="server" Height="100px" TextMode="MultiLine" Width="250px" BorderStyle="None" style="border-radius: 2px; font-family: 'Segoe UI';" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Yemek:</strong></td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" Height="30px" Width="250px" BorderStyle="None" style="border-radius: 2px;" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <asp:Button ID="BtnOnayla" runat="server" BackColor="#FFFF99" CssClass="auto-style8" Height="40px" OnClick="BtnOnayla_Click" Text="Onayla" Width="110px" BorderStyle="None" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
