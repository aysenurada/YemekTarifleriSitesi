<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifleriWebSite.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            text-align: right;
            font-size: large;
        }
        .auto-style8 {
            font-weight: bold;
            font-size: medium;
            font-family: "Segoe UI";
            border: none;
            cursor: pointer;
        }
        .auto-style9 {
            text-align: center;
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
            <td class="auto-style7"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style-19" Height="100px" TextMode="MultiLine" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="230px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9">
                <strong>
                <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle" BackColor="#FFFF66" CssClass="auto-style8" Height="50px" Width="110px" OnClick="BtnGuncelle_Click" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>
