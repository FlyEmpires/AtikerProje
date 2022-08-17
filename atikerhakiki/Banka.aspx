<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Banka.aspx.cs" Inherits="atikerhakiki.Banka" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <link href="css/resp.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 77px;
        }

        .auto-style2 {
            width: 225px;
        }

        .auto-style3 {
            height: 77px;
            width: 225px;
        }

        .auto-style6 {
            height: 272px;
            width: 427px;
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
            <table class="auto-style6" border="1">

                <tr>
                    <td>&nbsp; &nbsp; &nbsp; Banka Hesap Kodu</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="GETİR" />
                    </td>

                    <%--            <td><input type="text" class="bosluk" name="no" placeholder="Lütfen Stok No Giriniz"/></td>--%>
                </tr>

                <tr>
                    <td class="auto-style4">&nbsp; &nbsp;&nbsp; &nbsp;Hesap Adı</td>

                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style5">&nbsp; &nbsp; &nbsp; Iban Numarası</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style1">&nbsp; &nbsp; &nbsp; Banka Hesap Tipi</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style1">&nbsp; &nbsp; &nbsp;
                Banka Telefon</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                </tr>

            </table>

        </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="KAYDET" />
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="GÜNCELLE" />
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Height="24px" OnClick="Button2_Click" Text="SİL" Width="73px" />
            &nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Height="28px" OnClick="Button3_Click" Text="HAREKET GETİR" Width="122px" />
            &nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
            &nbsp;&nbsp;
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [REC_DATE], [REC_USERNAME], [ARAC_PLAKA], [ARAC_MODEL], [ARAC_MARKA] FROM [TBLARACSB]"></asp:SqlDataSource>
        </p>
     
        <asp:GridView ID="GridView1" class="grid1 tablo1" runat="server" Height="152px" Width="477px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [BANKA_HESAP_KODU], [BANKA_HESAP_ISIM], [IBAN_NO], [BANKA_HESAP_TIPI], [BANKA_TELEFON] FROM [TBLBANKASB]"></asp:SqlDataSource>
        &nbsp;
            &nbsp;&nbsp;&nbsp;
        
        <asp:GridView ID="GridView2" class="grid2 tablo2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="190px" Width="580px">
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
    </form>
</body>
</html>
