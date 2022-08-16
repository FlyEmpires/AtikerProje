<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Besi.aspx.cs" Inherits="atikerhakiki.Besi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
              <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>  

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 221px;
            height: 0px;
        }
        .auto-style2 {
            width: 598px;
            height: 395px;
        }
        .auto-style3 {
            width: 324px;
        }
        .auto-style4 {
            width: 224px;
            height: 84px;
        }
        .auto-style5 {
            width: 225px;
            height: 0px;
        }
        .auto-style6 {
            width: 324px;
            height: 0px;
        }
        .auto-style7 {
            height: 57px;
        }
        .auto-style8 {
            width: 324px;
            height: 57px;
        }
        .auto-style9 {
            width: 324px;
            height: 84px;
        }
    </style>
</head>
<body>
    <ul class="pager">
  <li></li>
        <li><a href="Anasayfa.aspx">ANASAYFA</a></li>
</ul>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2" border="1">

        <tr>
            <td>&nbsp &nbsp &nbsp Küpe NO:</td>
            <td class="auto-style3"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

<%--            <td><input type="text" class="bosluk" name="no" placeholder="Lütfen Stok No Giriniz"/></td>--%>
        </tr>

        <tr>
            <td class="auto-style4">&nbsp; &nbsp;&nbsp; &nbsp;Besi Adı:</td>

            <td class="auto-style9"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style5">&nbsp &nbsp &nbsp Besi Cinsi:</td>
            <td class="auto-style3"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style1">&nbsp &nbsp &nbsp Doğum Tarihi:</td>
            <td class="auto-style6"><asp:TextBox ID="TextBox4" runat="server" TextMode="DateTime"></asp:TextBox>
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            </td>
        </tr>

        <tr>
            <td class="auto-style7">&nbsp; &nbsp; &nbsp;
                Doğum KG:</td>
            <td class="auto-style8"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>

    </table>
        </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [REC_DATE], [REC_USERNAME], [ARAC_PLAKA], [ARAC_MODEL], [ARAC_MARKA] FROM [TBLARACSB]"></asp:SqlDataSource>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="KAYDET" Height="72px" Width="166px" />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Height="68px" OnClick="Button3_Click" Text="GÜNCELLEME:  " Width="244px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="66px" OnClick="Button2_Click" Text="SİL" Width="159px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
        <asp:GridView ID="GridView1" runat="server" Height="229px" Width="620px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [KUPE_NO], [BESI_ADI], [BESI_CINSI], [DOGUM_TARIHI], [DOGUM_KG] FROM [TBLBESISB]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="HAREKETLER" />
&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Küpe No: "></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" Height="131px" Width="562px">
        </asp:GridView>
    </form>
</body>
</html>
