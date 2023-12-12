<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifleriWebSite.Yemekler" %>

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
            width: 223px;
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
            border: none;
            cursor: pointer;
            border-radius: 2px;
        }
        .auto-style18 {
            text-align: center;
        }

        .auto-style19 {
            font-family: "Segoe UI";
            border-radius: 2px;
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
                        <td class="auto-style11">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                            <a href="Yemekler.aspx?YemekID=<%# Eval("YemekID") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style16">
                            <a href="YemekDuzenle.aspx?YemekID=<%# Eval("YemekID") %>">
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
                    <td><strong><span class="auto-style6">YEMEK EKLEME</span></strong></td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <table class="auto-style7">
            <tr>
                <td class="auto-style16">Yemek Ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="300px" BorderStyle="None"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Malzemeler:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="300px" CssClass="auto-style19" BorderStyle="None" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Tarif:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px" CssClass="auto-style19" BorderStyle="None" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Kategori:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="BtnEkle" runat="server" BackColor="#FFFF66" CssClass="auto-style17" Height="40px" Text="Ekle" Width="130px" OnClick="BtnEkle_Click" BorderStyle="None" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

