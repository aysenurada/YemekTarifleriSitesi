<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifleriWebSite.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            text-align: right;
            font-size: medium;
        }
        .auto-style9 {
            font-weight: bold;
            font-size: large;
            cursor: pointer;
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
            <td class="auto-style7"><strong>Tarif Adı:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Yapılışı:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Resim:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Öneren:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Mail:</strong></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td><strong>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#FFFF66" BorderStyle="None" CssClass="auto-style9" Height="40px" Text="Onayla" Width="120px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
