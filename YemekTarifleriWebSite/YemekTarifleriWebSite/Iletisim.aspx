<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekTarifleriWebSite.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: x-large;
            font-family: "Segoe UI";
            color: #FFFF99;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            text-align: right;
            font-family: "Segoe UI";
            color: #171717;
        }
        .auto-style8 {
            font-size: large;
            font-weight: bold;
            color: #171717;
            border-radius: 2px;
            cursor: pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <strong>&nbsp;<asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Bize Ulaşın!"></asp:Label>
        </strong>
        <br />
        <br />
        <table class="auto-style6">
            <tr>
                <td class="auto-style7"><strong>Ad Soyad:</strong></td>
                <td>
                    <asp:TextBox ID="TxtAdSoyad" runat="server" Height="20px" Width="200px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Mail Adresi:</strong></td>
                <td>
                    <asp:TextBox ID="TxtMail" runat="server" Height="20px" Width="200px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Konu:</strong></td>
                <td>
                    <asp:TextBox ID="TxtKonu" runat="server" Height="20px" Width="200px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Mesaj:</strong></td>
                <td>
                    <asp:TextBox ID="TxtMesaj" runat="server" Height="100px" TextMode="MultiLine" Width="200px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td><strong>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnGonder" runat="server" BackColor="#FFFF99" BorderStyle="None" CssClass="auto-style8" Text="Gönder" Width="150px" Height="40px" OnClick="BtnGonder_Click" />
                    </strong></td>
            </tr>
        </table>
    </div>
</asp:Content>
