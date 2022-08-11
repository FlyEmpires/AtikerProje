<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Banka.aspx.cs" Inherits="atikerhakiki.Banka" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
 <table class="auto-style6" border="1">

        <tr>
            <td>&nbsp; &nbsp; &nbsp; Banka Hesap Kodu</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

<%--            <td><input type="text" class="bosluk" name="no" placeholder="Lütfen Stok No Giriniz"/></td>--%>
        </tr>

        <tr>
            <td class="auto-style4">&nbsp; &nbsp;&nbsp; &nbsp;Hesap Adı</td>

            <td class="auto-style4"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style5">&nbsp; &nbsp; &nbsp;Iban Numarası</td>
            <td class="auto-style5"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style1">&nbsp; &nbsp; &nbsp; Banka Hesap Tipi</td>
            <td class="auto-style1"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>&nbsp; &nbsp; &nbsp;
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [REC_DATE], [REC_USERNAME], [ARAC_PLAKA], [ARAC_MODEL], [ARAC_MARKA] FROM [TBLARACSB]"></asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Banka Telefon</td>
            <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>

    </table>

        </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="KAYDET" />
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BANKA_HESAP_KODU" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="BANKA_HESAP_KODU" HeaderText="BANKA_HESAP_KODU" ReadOnly="True" SortExpression="BANKA_HESAP_KODU" />
                <asp:BoundField DataField="BANKA_HESAP_ISIM" HeaderText="BANKA_HESAP_ISIM" SortExpression="BANKA_HESAP_ISIM" />
                <asp:BoundField DataField="IBAN_NO" HeaderText="IBAN_NO" SortExpression="IBAN_NO" />
                <asp:BoundField DataField="BANKA_HESAP_TIPI" HeaderText="BANKA_HESAP_TIPI" SortExpression="BANKA_HESAP_TIPI" />
                <asp:BoundField DataField="BANKA_TELEFON" HeaderText="BANKA_TELEFON" SortExpression="BANKA_TELEFON" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [BANKA_HESAP_KODU], [BANKA_HESAP_ISIM], [IBAN_NO], [BANKA_HESAP_TIPI], [BANKA_TELEFON] FROM [TBLBANKASB]"></asp:SqlDataSource>
    </form>
</body>
</html>
