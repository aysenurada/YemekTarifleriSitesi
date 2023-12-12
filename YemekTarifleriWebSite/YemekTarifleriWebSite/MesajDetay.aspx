<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="YemekTarifleriWebSite.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            text-align: right;
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
            <td class="auto-style7"><strong>Mesaj Gönderen:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="250px" BorderStyle="None" style="border-radius: 2px;" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="250px" BorderStyle="None" style="border-radius: 2px;" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Başlık:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="250px" BorderStyle="None" style="border-radius: 2px;" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>İçerik:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="200px" TextMode="MultiLine" Width="250px" BorderStyle="None" style="border-radius: 2px; font-family: 'Segoe UI'" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
