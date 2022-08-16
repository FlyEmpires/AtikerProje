<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Muhasebe.aspx.cs" Inherits="atikerhakiki.Muhasebe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 170px;
        }
        .auto-style3 {
            width: 611px;
            height: 211px;
        }
        .auto-style4 {
            width: 169px;
        }
        .auto-style5 {
            width: 168px;
        }
        .auto-style6 {
            width: 196px
        }
    </style>
              <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>  

</head>
<body>
    <ul class="pager">
  <li></li>
        <li><a href="Anasayfa.aspx">ANASAYFA</a></li>
</ul>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style3" border="1">

        <tr>
            <td>&nbsp &nbsp &nbsp İşletme NO:</td>
            <td class="auto-style6"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

<%--            <td><input type="text" class="bosluk" name="no" placeholder="Lütfen Stok No Giriniz"/></td>--%>
        </tr>

        <tr>
            <td class="auto-style4">&nbsp; &nbsp;&nbsp; &nbsp;Hesap Kodu:</td>

            <td class="auto-style6"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>&nbsp;<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="GETİR" />
            </td>
        </tr>

        <tr>
            <td class="auto-style5">&nbsp &nbsp &nbsp Hesap Sınıf Kodu:</td>
            <td class="auto-style6"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style1">&nbsp &nbsp &nbsp Hesap Grup Kodu:</td>
            <td class="auto-style6"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>&nbsp; &nbsp; &nbsp;
                Hesap Tipi:</td>
            <td class="auto-style6"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>

    </table>

        </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [REC_DATE], [REC_USERNAME], [ARAC_PLAKA], [ARAC_MODEL], [ARAC_MARKA] FROM [TBLARACSB]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                <p>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="KAYDET" />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="GÜNCELLEME" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="27px" OnClick="Button2_Click" Text="SİL" Width="89px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="HESAP_KODU" DataSourceID="SqlDataSource2" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="295px" Width="616px">
            <Columns>
                <asp:BoundField DataField="ISLETME_NO" HeaderText="ISLETME_NO" SortExpression="ISLETME_NO" />
                <asp:BoundField DataField="HESAP_KODU" HeaderText="HESAP_KODU" ReadOnly="True" SortExpression="HESAP_KODU" />
                <asp:BoundField DataField="HESAP_SINIF_KODU" HeaderText="HESAP_SINIF_KODU" SortExpression="HESAP_SINIF_KODU" />
                <asp:BoundField DataField="HESAP_GRUP_KODU" HeaderText="HESAP_GRUP_KODU" SortExpression="HESAP_GRUP_KODU" />
                <asp:BoundField DataField="HESAP_TIPI" HeaderText="HESAP_TIPI" SortExpression="HESAP_TIPI" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="HAREKETLER" />
&nbsp;<asp:Label ID="Label2" runat="server" Text="HESAP KODU: "></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:GridView ID="GridView2" runat="server" Height="183px" Width="390px">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [ISLETME_NO], [HESAP_KODU], [HESAP_SINIF_KODU], [HESAP_GRUP_KODU], [HESAP_TIPI] FROM [TBLMUHSB]"></asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
