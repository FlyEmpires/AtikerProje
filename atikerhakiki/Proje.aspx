<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Proje.aspx.cs" Inherits="atikerhakiki.Proje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
              <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>  
    <link href="css/resp.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 378px;
            height: 8px;
        }
        .auto-style2 {
            width: 686px;
            height: 617px;
        }
        .grid1{

    margin-top:-600px;
    margin-left:730px;
}
                .grid2{

    margin-top:350px;
   
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
            <td>&nbsp; &nbsp; &nbsp; Proje Kodu:</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="GETİR" />
            </td>

<%--            <td><input type="text" class="bosluk" name="no" placeholder="Lütfen Stok No Giriniz"/></td>--%>
        </tr>

        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Proje Adı&nbsp;</td>

            <td class="auto-style4"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style5">&nbsp; &nbsp; &nbsp; Başlama Tarihi</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="DateTime"></asp:TextBox>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px" OnSelectionChanged="Calendar1_SelectionChanged">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
                </asp:Calendar>
            </td>
        </tr>

        <tr>
            <td class="auto-style1">&nbsp; &nbsp; &nbsp; Proje Aktif</td>
            <td class="auto-style1"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>&nbsp; &nbsp; &nbsp;
                Teslim Tarihi</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" TextMode="DateTime"></asp:TextBox>
                <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px" OnSelectionChanged="Calendar2_SelectionChanged">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
                </asp:Calendar>
            </td>
        </tr>

    </table>
                </div>
       
        <asp:Button ID="Button1" runat="server" Height="84px" OnClick="Button1_Click" Text="KAYDET" Width="149px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Height="77px" OnClick="Button3_Click" Text="GÜNCELLEME" Width="117px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="75px" OnClick="Button2_Click" Text="SİL" Width="157px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click1" Text="HAREKETLER" Height="74px" Width="200px" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [REC_DATE], [REC_USERNAME], [ARAC_PLAKA], [ARAC_MODEL], [ARAC_MARKA] FROM [TBLARACSB]"></asp:SqlDataSource>
                <div class="grid1">
        <asp:GridView ID="GridView1" runat="server" Height="220px" Width="696px">
        </asp:GridView>
                    </div>
        <br />
        <br />
        

        <div class="grid2">
&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [PROJE_KODU], [PROJE_ADI], [PROJE_BASLAMA_TARIHI], [PROJE_AKTIF], [PROJE_TESLIM_TARIHI] FROM [TBLPROJEDOSYA]"></asp:SqlDataSource>
        <asp:GridView  ID="GridView2" runat="server" Height="207px" Width="748px">
        </asp:GridView>
           </div>

        <br />
    </form>
</body>
</html>
