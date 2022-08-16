<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MuhasebeFıs.aspx.cs" Inherits="atikerhakiki.MuhasebeFıs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
                  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>  
          <link href="css/StyleSheet1.css" rel="stylesheet" />

    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 197px;
            width: 408px;
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
            <td>&nbsp &nbsp &nbsp Belge Numarası:</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

<%--            <td><input type="text" class="bosluk" name="no" placeholder="Lütfen Stok No Giriniz"/></td>--%>
        </tr>

        <tr>
            <td class="auto-style4">&nbsp; &nbsp;&nbsp; &nbsp;Fiş Numarası:</td>

            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
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
&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
        
        <div class="muhfıstablo">
        <asp:GridView ID="GridView1" runat="server" Height="194px" Width="385px" CellPadding="3" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
            </div>
        <br />
        <br />
        <br />
        <br />
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>

            
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
       
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Height="52px" Text="SİL" Width="75px" OnClick="Button3_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />

            
        <br />
        <asp:GridView ID="GridView2" runat="server" Height="222px" Width="412px">
        </asp:GridView>
    </form>
</body>
</html>
