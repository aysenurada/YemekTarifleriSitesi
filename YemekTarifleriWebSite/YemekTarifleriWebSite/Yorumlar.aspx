<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifleriWebSite.Yorumlar" %>

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

        .auto-style11 {
            text-align: left;
            width: 230px;
        }

        .auto-style10 {
            width: 99px;
            text-align: right;
        }

        .auto-style16 {
            text-align: right;
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
                <td><strong><span class="auto-style6">ONAYLANAN YORUM LİSTESİ</span></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style16">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/update.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Style="margin-top: 15px;">
        <table class="auto-style7">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button3" runat="server" BackColor="#FFFFCC" BorderStyle="None" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button4" runat="server" BackColor="#FFFFCC" BorderStyle="None" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td><strong><span class="auto-style6">ONAYSIZ YORUM LİSTESİ</span></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style16">
                            <a href="YorumDetay.aspx?YorumID=<%# Eval("YorumID") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
