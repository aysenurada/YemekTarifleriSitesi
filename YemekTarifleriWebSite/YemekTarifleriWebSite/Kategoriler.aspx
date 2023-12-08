<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifleriWebSite.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: large;
        }

        .auto-style7 {
            width: 100%;
        }

        .auto-style10 {
            width: 99px;
            text-align: right;
        }

        .auto-style11 {
            text-align: left;
        }

        .auto-style13 {
            font-weight: bold;
            cursor: pointer;
        }

        .auto-style14 {
            width: 37px;
        }

        .auto-style15 {
            width: 43px;
        }

        .auto-style16 {
            text-align: right;
        }

        .auto-style17 {
            font-size: large;
            font-weight: bold;
            background-color: #FFFF99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style7">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" BorderStyle="None" CssClass="auto-style13" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" BackColor="#FFFFCC" BorderStyle="None" CssClass="auto-style13" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </strong></td>
                <td><strong><span class="auto-style6">KATEGORİ LİSTESİ</span></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                            <a href="Kategoriler.aspx?KategoriID=<%# Eval("KategoriID") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style16">
                            <a href="KategoriDuzenle.aspx?KategoriID=<%# Eval("KategoriID") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel3" runat="server">
        <asp:Panel ID="Panel4" runat="server">
            <table class="auto-style7">
                <tr>
                    <td class="auto-style14"><strong>
                        <asp:Button ID="Button3" runat="server" BackColor="#FFFFCC" BorderStyle="None" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                    <td class="auto-style15"><strong>
                        <asp:Button ID="Button4" runat="server" BackColor="#FFFFCC" BorderStyle="None" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                    <td><strong><span class="auto-style6">KATEGORİ EKLEME</span></strong></td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <table class="auto-style7">
            <tr>
                <td>Kategori Ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori İkon:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style17" Height="40px" Text="Ekle" Width="130px" OnClick="BtnEkle_Click" BackColor="#FFFF99" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
