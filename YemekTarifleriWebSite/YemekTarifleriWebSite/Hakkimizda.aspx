<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifleriWebSite.Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: x-large;
            font-family: "Segoe UI";
            color: #FFFF99;
            text-align: center;
        }

        .auto-style6 {
            text-align: center;
            font-family: "Segoe UI";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5">
        <strong>BİZ KİMİZ?</strong>
    </p>
    <div class="auto-style6">
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>

    </div>
    <br />

    <asp:Image ID="Image1" runat="server" Height="264px" ImageUrl="~/Resimler/hakkimizda.jpg" Width="450px" />
</asp:Content>
