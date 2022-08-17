<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MuhasebeFıs.aspx.cs" Inherits="atikerhakiki.MuhasebeFıs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
                  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>  
          <link href="css/StyleSheet1.css" rel="stylesheet" />
    <link href="css/resp.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 197px;
            width: 408px;
        }
                .grid1 {
            margin-top: -250px;
            margin-left: 100px;
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
        <br />

        <div>
             <table class="auto-style2" border="1">

        <tr>
            <td>&nbsp &nbsp &nbsp Belge Numarası:</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp; </td>

<%--            <td><input type="text" class="bosluk" name="no" placeholder="Lütfen Stok No Giriniz"/></td>--%>
        </tr>

        <tr>
            <td class="auto-style4">&nbsp; &nbsp;&nbsp; &nbsp;Fiş Numarası:</td>

            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="GETİR" />
            </td>
        </tr>

        <tr>
            <td class="auto-style5">&nbsp &nbsp &nbsp Tarih:</td>
            <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style1">&nbsp; &nbsp; &nbsp; Fiş Tipi:</td>
            <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>&nbsp; &nbsp; &nbsp; Ay Kodu:</td>
            <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>

    </table>
        </div>
        <asp:Button ID="Button1" runat="server" Height="53px" OnClick="Button1_Click" Text="KAYDET" Width="97px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="51px" Text="GÜNCELLE" Width="87px" OnClick="Button2_Click1" />
&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Height="52px" Text="SİL" Width="75px" OnClick="Button3_Click1" />
&nbsp;&nbsp;&nbsp;

            
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="HAREKETLER" Height="50px" Width="106px" />
       
            &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
        
        <div class="muhfıstablo">
        <asp:GridView ID="GridView1" class="grid1 tablo1" runat="server" Height="79px" Width="385px" CellPadding="2" GridLines="None" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" ForeColor="Black">
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
            </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
       
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />

            
        <br />
        <asp:GridView ID="GridView2" class="grid2 tablo2" runat="server" Height="222px" Width="412px">
        </asp:GridView>
    </form>
</body>
</html>
