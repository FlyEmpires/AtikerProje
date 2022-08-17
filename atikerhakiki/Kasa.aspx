<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kasa.aspx.cs" Inherits="atikerhakiki.Kasa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
                  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>  
    <link href="css/resp.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            margin-right: 61px;
        }
        .auto-style5 {
            width: 418px;
            height: 150px;
        }
                .grid1 {
            margin-top: -250px;
            margin-left: 650px;
        }

        .grid2 {
            margin-top: 70px;
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

             <table class="auto-style5" border="1">

        <tr>
            <td>&nbsp &nbsp &nbsp Kasa Kodu:</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="GETİR" />
            </td>

<%--            <td><input type="text" class="bosluk" name="no" placeholder="Lütfen Stok No Giriniz"/></td>--%>
        </tr>

        <tr>
            <td class="auto-style4">&nbsp; &nbsp;&nbsp; &nbsp;Kasa Tanımı:</td>

            <td class="auto-style4"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style5">&nbsp &nbsp &nbsp Şube Kodu:</td>
            <td class="auto-style5"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style1">&nbsp &nbsp &nbsp Dövizli mi:</td>
            <td class="auto-style1"><asp:TextBox ID="TextBox4" runat="server" Height="29px" Width="118px"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style3">&nbsp; &nbsp; &nbsp;
                Pos Ödeme Tipi</td>
            <td class="auto-style3"><asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style4"></asp:TextBox></td>
        </tr>

    </table>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="KAYDET" />
                &nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="GÜNCELLE" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="26px" OnClick="Button2_Click" Text="SİL" Width="56px" />
&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" Height="26px" OnClick="Button4_Click" Text="HAREKET GETİR" Width="124px" />
            &nbsp;&nbsp;
                </p>
        <asp:GridView ID="GridView1" class="grid1 tablo1" runat="server" Height="186px" Width="486px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [KASA_KODU], [KASA_TANIMI], [SUBE_KODU], [DOVIZLI_MI], [POS_ODEME_TIPI] FROM [TBLKASASB]" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [REC_DATE], [REC_USERNAME], [ARAC_PLAKA], [ARAC_MODEL], [ARAC_MARKA] FROM [TBLARACSB]"></asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView2" class="grid2 tablo2" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="225px" HorizontalAlign="Justify" PageSize="12" Width="515px">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    </form>
</body>
</html>
