<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="YemekTarifleriWebSite.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            font-weight: bold;
            font-size: medium;
            cursor: pointer;
            border-radius: 2px;
        }
        .auto-style8 {
            text-align: right;
            width: 139px;
        }
        .auto-style9 {
            width: 139px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Kategori Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" Height="30px" Width="250px" style="border-radius: 2px;" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Görsel:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="254px" BorderStyle="None" Height="30px" style="border-radius: 2px;" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" BackColor="#FFFF99" CssClass="auto-style7" Height="40px" Text="Güncelle" Width="130px" OnClick="Button1_Click" BorderStyle="None" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
