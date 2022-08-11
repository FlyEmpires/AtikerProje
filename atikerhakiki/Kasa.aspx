<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kasa.aspx.cs" Inherits="atikerhakiki.Kasa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <table class="auto-style6" border="1">

        <tr>
            <td>&nbsp &nbsp &nbsp Kasa Kodu:</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

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
            <td class="auto-style1"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style3">&nbsp; &nbsp; &nbsp;
                Pos Ödeme Tipi</td>
            <td class="auto-style3"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>

    </table>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="KAYDET" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [REC_DATE], [REC_USERNAME], [ARAC_PLAKA], [ARAC_MODEL], [ARAC_MARKA] FROM [TBLARACSB]"></asp:SqlDataSource>
                </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="KASA_KODU" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="KASA_KODU" HeaderText="KASA_KODU" ReadOnly="True" SortExpression="KASA_KODU" />
                <asp:BoundField DataField="KASA_TANIMI" HeaderText="KASA_TANIMI" SortExpression="KASA_TANIMI" />
                <asp:BoundField DataField="SUBE_KODU" HeaderText="SUBE_KODU" SortExpression="SUBE_KODU" />
                <asp:BoundField DataField="DOVIZLI_MI" HeaderText="DOVIZLI_MI" SortExpression="DOVIZLI_MI" />
                <asp:BoundField DataField="POS_ODEME_TIPI" HeaderText="POS_ODEME_TIPI" SortExpression="POS_ODEME_TIPI" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [KASA_KODU], [KASA_TANIMI], [SUBE_KODU], [DOVIZLI_MI], [POS_ODEME_TIPI] FROM [TBLKASASB]"></asp:SqlDataSource>
    </form>
</body>
</html>
