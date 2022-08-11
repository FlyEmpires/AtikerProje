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
        .auto-style2 {
            width: 172px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style6" border="1">

        <tr>
            <td>&nbsp &nbsp &nbsp İşletme NO:</td>
            <td class="auto-style2"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

<%--            <td><input type="text" class="bosluk" name="no" placeholder="Lütfen Stok No Giriniz"/></td>--%>
        </tr>

        <tr>
            <td class="auto-style4">&nbsp; &nbsp;&nbsp; &nbsp;Hesap Kodu:</td>

            <td class="auto-style2"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style5">&nbsp &nbsp &nbsp Hesap Sınıf Kodu:</td>
            <td class="auto-style2"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style1">&nbsp &nbsp &nbsp Hesap Grup Kodu:</td>
            <td class="auto-style2"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>&nbsp; &nbsp; &nbsp;
                Hesap Tipi:</td>
            <td class="auto-style2"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>

    </table>

        </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [REC_DATE], [REC_USERNAME], [ARAC_PLAKA], [ARAC_MODEL], [ARAC_MARKA] FROM [TBLARACSB]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                <p>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="KAYDET" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="23px" OnClick="Button2_Click" Text="SİL" Width="57px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="İŞLETME NO: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="HESAP_KODU" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="ISLETME_NO" HeaderText="ISLETME_NO" SortExpression="ISLETME_NO" />
                <asp:BoundField DataField="HESAP_KODU" HeaderText="HESAP_KODU" ReadOnly="True" SortExpression="HESAP_KODU" />
                <asp:BoundField DataField="HESAP_SINIF_KODU" HeaderText="HESAP_SINIF_KODU" SortExpression="HESAP_SINIF_KODU" />
                <asp:BoundField DataField="HESAP_GRUP_KODU" HeaderText="HESAP_GRUP_KODU" SortExpression="HESAP_GRUP_KODU" />
                <asp:BoundField DataField="HESAP_TIPI" HeaderText="HESAP_TIPI" SortExpression="HESAP_TIPI" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [ISLETME_NO], [HESAP_KODU], [HESAP_SINIF_KODU], [HESAP_GRUP_KODU], [HESAP_TIPI] FROM [TBLMUHSB]"></asp:SqlDataSource>
    </form>
</body>
</html>
