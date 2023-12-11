<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifleriWebSite.HakkimizdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: x-large;
        }

        .auto-style7 {
            width: 100%;
        }

        .auto-style8 {
            margin-left: 40px;
        }

        .auto-style9 {
            text-align: center;
            margin-left: 40px;
        }

        .auto-style10 {
            font-size: medium;
            font-family: "Segoe UI";
        }

        .auto-style11 {
            text-align: center;
        }

        .auto-style12 {
            font-weight: bold;
            font-size: large;
            cursor: pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style11">
            <strong><span class="auto-style6">HAKKIMIZDA</span></strong>
        </div>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style7">
            <tr>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style10" Height="250px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" BackColor="#FFFF66" BorderStyle="None" CssClass="auto-style12" Height="45px" Text="Güncelle" Width="140px" OnClick="Button1_Click" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
