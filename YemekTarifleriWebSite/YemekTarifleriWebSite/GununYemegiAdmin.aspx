<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifleriWebSite.GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }

        .auto-style14 {
            width: 37px;
        }

        .auto-style13 {
            font-weight: bold;
            cursor: pointer;
        }

        .auto-style15 {
            width: 43px;
        }

        .auto-style6 {
            font-size: large;
        }

        .auto-style16 {
            text-align: right;
        }

        .auto-style17 {
            width: 305px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style7">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" BorderStyle="None" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" BackColor="#FFFFCC" BorderStyle="None" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td><strong><span class="auto-style6">YEMEK LİSTESİ</span></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style16">
                            <a href="YemekDuzenle.aspx?YemekID=<%# Eval("YemekID") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/secme.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
