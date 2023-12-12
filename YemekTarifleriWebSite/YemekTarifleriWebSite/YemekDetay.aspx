<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifleriWebSite.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
            font-family: "Segoe UI";
        }
        .auto-style7 {
            font-size: xx-small;
        }
        .auto-style8 {
            font-size: large;
            font-family: "Segoe UI";
        }
        .auto-style9 {
            font-size: 30pt;
            font-family: "Segoe UI";
            margin-left: 10px;
            color: #FFFF99;
        }
        .auto-style10 {
            background-color: #FFFF99;
            font-family: "Segoe UI";
        }
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            text-align: right;
            font-family: "Segoe UI";
        }
        .auto-style13 {
            font-size: medium;
            font-weight: bold;
            cursor: pointer;
        }
        .auto-style14 {
            font-size: large;
        }
        .auto-style15 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label4" runat="server" Text="Label" CssClass="auto-style9"></asp:Label>
    <br />
    </strong>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td>
                        <strong>
                        &nbsp;
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        <em>
                        &nbsp;
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style15" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        </em>&nbsp;<em>-
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </em>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #000000;">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div class="auto-style10"><strong>&nbsp;&nbsp; <asp:Image ID="Image2" runat="server" Height="16px" ImageUrl="~/Resimler/comment.png" Width="20px" />
&nbsp;<span class="auto-style14">Yorumlarını Paylaş</span></strong></div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style11">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">Ad Soyad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px" BorderStyle="None" style="border-radius: 2px;" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Mail: </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px" BorderStyle="None" style="border-radius: 2px;" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Yorum:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px" BorderStyle="None" style="font-family: 'Segoe UI'; border-radius: 2px;" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <strong>
                    <asp:Button ID="BtnYorumYap" runat="server" BackColor="#FFFF99" CssClass="auto-style13" OnClick="BtnYorumYap_Click" Text="Yorum Yap" Width="200px" BorderStyle="None" Height="40px" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
