﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Arac.aspx.cs" Inherits="atikerhakiki.Arac" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
        .auto-style2 {
            margin-top: 17px;
        }
        .auto-style4 {
            height: 15px;
        }
        .auto-style5 {
            height: 20px;
        }
        .auto-style6 {
            height: 198px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <table class="auto-style6" border="1">

        <tr>
            <td>&nbsp &nbsp &nbsp Kayıt Tarihi:</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

<%--            <td><input type="text" class="bosluk" name="no" placeholder="Lütfen Stok No Giriniz"/></td>--%>
        </tr>

        <tr>
            <td class="auto-style4">&nbsp; &nbsp;&nbsp; &nbsp;Kullanıcı Adı:</td>

            <td class="auto-style4"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style5">&nbsp &nbsp &nbsp Araç Plaka:</td>
            <td class="auto-style5"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style1">&nbsp &nbsp &nbsp Araç Model:</td>
            <td class="auto-style1"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>&nbsp; &nbsp; &nbsp;
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [REC_DATE], [REC_USERNAME], [ARAC_PLAKA], [ARAC_MODEL], [ARAC_MARKA] FROM [TBLARACSB]"></asp:SqlDataSource>
                Araç Marka </td>
            <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>

    </table>


        </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="KAYDET" style="height: 26px" />
            <asp:GridView ID="GridView1" class="tablo2" runat="server" AutoGenerateColumns="False" CssClass="auto-style2" DataKeyNames="ARAC_PLAKA" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="REC_DATE" HeaderText="REC_DATE" SortExpression="REC_DATE" />
                    <asp:BoundField DataField="REC_USERNAME" HeaderText="REC_USERNAME" SortExpression="REC_USERNAME" />
                    <asp:BoundField DataField="ARAC_PLAKA" HeaderText="ARAC_PLAKA" ReadOnly="True" SortExpression="ARAC_PLAKA" />
                    <asp:BoundField DataField="ARAC_MODEL" HeaderText="ARAC_MODEL" SortExpression="ARAC_MODEL" />
                    <asp:BoundField DataField="ARAC_MARKA" HeaderText="ARAC_MARKA" SortExpression="ARAC_MARKA" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerSettings Position="TopAndBottom" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" HorizontalAlign="Justify" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </p>
    </form>
</body>
</html>
<style>

    .tablo2 {
background-color:aqua;
    width: 75%;
  
}


.tablo1veri11 {
    width: 75%;
    height: 20px;
}

</style>