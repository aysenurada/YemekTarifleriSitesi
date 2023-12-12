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
            border-radius: 2px;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            font-size: medium;
            font-weight: bold;
            cursor: pointer;
            border: none;
            border-radius: 2px;
        }
        .auto-style11 {
            width: 100%;
            height: 25px;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="230px" BorderStyle="None" style="border-radius: 2px;" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="230px" BorderStyle="None" style="border-radius: 2px; font-family: 'Segoe UI';" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="230px" BorderStyle="None" style="border-radius: 2px; font-family: 'Segoe UI';" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="230px" style="border-radius: 2px;" >
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Görsel:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="230px" BorderStyle="None" style="border-radius: 2px;" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9">
                <strong>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle" BackColor="#FFFF66" CssClass="auto-style8" Height="50px" Width="110px" OnClick="BtnGuncelle_Click" BorderStyle="None" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9">
                <strong>
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnGununYemegi" runat="server" BackColor="#FFCC66" CssClass="auto-style10" Height="40px" Text="Günün Yemeği Seç" OnClick="BtnGununYemegi_Click" BorderStyle="None" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
