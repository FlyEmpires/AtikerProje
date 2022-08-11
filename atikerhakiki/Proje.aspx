<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Proje.aspx.cs" Inherits="atikerhakiki.Proje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            
             <table class="auto-style2" border="1">

        <tr>
            <td>&nbsp; &nbsp; &nbsp; Proje Kodu:</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

<%--            <td><input type="text" class="bosluk" name="no" placeholder="Lütfen Stok No Giriniz"/></td>--%>
        </tr>

        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Proje Adı&nbsp;</td>

            <td class="auto-style4"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style5">&nbsp; &nbsp; &nbsp; Başlama Tarihi</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
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
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [REC_DATE], [REC_USERNAME], [ARAC_PLAKA], [ARAC_MODEL], [ARAC_MARKA] FROM [TBLARACSB]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PROJE_KODU" DataSourceID="SqlDataSource2" Height="386px" Width="960px">
                    <Columns>
                        <asp:BoundField DataField="PROJE_KODU" HeaderText="PROJE_KODU" ReadOnly="True" SortExpression="PROJE_KODU" />
                        <asp:BoundField DataField="PROJE_ADI" HeaderText="PROJE_ADI" SortExpression="PROJE_ADI" />
                        <asp:BoundField DataField="PROJE_BASLAMA_TARIHI" HeaderText="PROJE_BASLAMA_TARIHI" SortExpression="PROJE_BASLAMA_TARIHI" />
                        <asp:BoundField DataField="PROJE_AKTIF" HeaderText="PROJE_AKTIF" SortExpression="PROJE_AKTIF" />
                        <asp:BoundField DataField="PROJE_TESLIM_TARIHI" HeaderText="PROJE_TESLIM_TARIHI" SortExpression="PROJE_TESLIM_TARIHI" />
                    </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [PROJE_KODU], [PROJE_ADI], [PROJE_BASLAMA_TARIHI], [PROJE_AKTIF], [PROJE_TESLIM_TARIHI] FROM [TBLPROJEDOSYA]"></asp:SqlDataSource>
    </form>
</body>
</html>
