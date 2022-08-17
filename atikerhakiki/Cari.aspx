<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cari.aspx.cs" Inherits="atikerhakiki.Cari" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script>    
        function SayiGirme(degisken) {
            degisken = (degisken) ? degisken : window.event;
            var charCode = (degisken.which) ? degisken.which : degisken.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {

                return false;
            }
            return true;

        }



    </script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <link href="css/resp.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 170px;
        }

        .auto-style2 {
            width: 486px;
            height: 215px;
        }

        .auto-style3 {
            margin-right: 36px;
        }
    
    </style>
</head>
<body>
    <ul class="pager">
        <li></li>
        <li><a href="Anasayfa.aspx">ANASAYFA</a></li>
    </ul>
    <br />
    <br />
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2" border="1">

                <tr>
                    <td>&nbsp &nbsp &nbsp Cari Kodu:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" onkeypress="return SayiGirme(event)"></asp:TextBox>
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="GETİR" />
                    </td>

                    <%--            <td><input type="text" class="bosluk" name="no" placeholder="Lütfen Stok No Giriniz"/></td>--%>
                </tr>

                <tr>
                    <td class="auto-style4">&nbsp; &nbsp;&nbsp; &nbsp;Cari Adı:</td>

                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style5">&nbsp &nbsp &nbsp Cari Kısa Adı::</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="162px"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style1">&nbsp &nbsp &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; İl:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>&nbsp; &nbsp; &nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; İlçe:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                </tr>

            </table>

        </div>
        <%-- CLASS --%>

        <div class="butonlar">

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [REC_DATE], [REC_USERNAME], [ARAC_PLAKA], [ARAC_MODEL], [ARAC_MARKA] FROM [TBLARACSB]"></asp:SqlDataSource>
            <p>

                <asp:Button ID="Button1" runat="server" Height="63px" OnClick="Button1_Click" Text="KAYDET" Width="132px" />
                <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Height="61px" OnClick="Button2_Click" Text="GÜNCELLE" Width="175px" />
                <asp:Button ID="Button3" runat="server" Height="59px" OnClick="Button3_Click" Text="SİL" Width="111px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button6" runat="server" Height="51px" OnClick="Button6_Click" Text="HAREKETLER" Width="103px" />
            </p>
        </div>
        &nbsp;
        <%-- CLASS --%>
        <div class="tablo tablo1">
            <asp:GridView ID="GridView1" runat="server" Height="136px" Width="512px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">


                <FooterStyle BackColor="White" ForeColor="#000066" />


                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

        </div>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [CARI_KODU], [CARI_ADI], [CARI_KISA_ISIM], [CARI_IL], [CARI_ILCE] FROM [TBLCARISB]"></asp:SqlDataSource>
        <%-- CLASS --%>

        <div class="hareketlerbuton">
            <%-- CLASS --%>
        </div>
        <div class="grid2 tablo2">

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

            <asp:GridView ID="GridView2" runat="server" Height="162px" Width="501px">
            </asp:GridView>

        </div>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
        <br />
        <br />
    </form>
</body>
</html>
