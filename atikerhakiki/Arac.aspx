<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Arac.aspx.cs" Inherits="atikerhakiki.Arac" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>  
    <link href="css/resp.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
        .auto-style4 {
            height: 15px;
        }
        .auto-style5 {
            height: 20px;
        }
        .auto-style6 {
            height: 240px;
            width: 453px;
        }
                .grid1{

    margin-top:-250px;
    margin-left:820px;
}
                .grid2{

    margin-top:70px;
   
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ul class="pager">
  <li></li>
        <li><a href="Anasayfa.aspx">ANASAYFA</a></li>
</ul>
        <div>

             <table class="auto-style6" border="1">

        <tr>
            <td>&nbsp &nbsp &nbsp Kayıt Tarihi:</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp; </td>

<%--            <td><input type="text" class="bosluk" name="no" placeholder="Lütfen Stok No Giriniz"/></td>--%>
        </tr>

        <tr>
            <td class="auto-style4">&nbsp; &nbsp;&nbsp; &nbsp;Kullanıcı Adı:</td>

            <td class="auto-style4"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="GETİR" />
            </td>
        </tr>

        <tr>
            <td class="auto-style5">&nbsp &nbsp &nbsp Araç Plaka:</td>
            <td class="auto-style5"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp; </td>
        </tr>

        <tr>
            <td class="auto-style1">&nbsp &nbsp &nbsp Araç Model:</td>
            <td class="auto-style1"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style7">&nbsp; &nbsp; &nbsp;
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [REC_DATE], [REC_USERNAME], [ARAC_PLAKA], [ARAC_MODEL], [ARAC_MARKA] FROM [TBLARACSB]"></asp:SqlDataSource>
                Araç Marka </td>
            <td class="auto-style7"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>

    </table>


        </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="KAYDET" Height="36px" Width="102px" />
            <asp:Button ID="Button3" runat="server" Height="35px" OnClick="Button3_Click" Text="GÜNCELLE" Width="85px" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="SİL" Width="130px" Height="35px" />
            
            <asp:GridView ID="GridView1" class="grid1 tablo1" runat="server" Height="298px" Width="506px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
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
               
        </p>
        <p>
&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="HAREKETLER" />
            <asp:Label ID="Label1" runat="server" Text="RECNO:  "></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </p>
        <p>
            
            &nbsp;</p>
        <div class="grid2 tablo2">
        <asp:GridView ID="GridView2" runat="server" Height="217px" Width="791px">
        </asp:GridView>

        </div>

    </form>
    
</body>
</html>
<style>

  



    .auto-style7 {
        height: 83px;
    }

</style>