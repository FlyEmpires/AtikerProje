<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bayi.aspx.cs" Inherits="atikerhakiki.Bayi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 233px;
        }
        .auto-style2 {
            width: 246px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style6" border="1">

        <tr>
            <td class="auto-style2">&nbsp &nbsp &nbsp Bayi Kodu:</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

<%--            <td><input type="text" class="bosluk" name="no" placeholder="Lütfen Stok No Giriniz"/></td>--%>
        </tr>

        <tr>
            <td class="auto-style2">&nbsp; &nbsp;&nbsp; &nbsp;Bayi İsİm:</td>

            <td class="auto-style4"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style2">&nbsp &nbsp &nbsp Bayi Yetkili:</td>
            <td class="auto-style5"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style2">&nbsp &nbsp &nbsp Firma Adı:</td>
            <td class="auto-style1"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style2">&nbsp; &nbsp; &nbsp;
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [REC_DATE], [REC_USERNAME], [ARAC_PLAKA], [ARAC_MODEL], [ARAC_MARKA] FROM [TBLARACSB]"></asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vergi No </td>
            <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>

    </table>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BAYI_KODU" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="BAYI_KODU" HeaderText="BAYI_KODU" ReadOnly="True" SortExpression="BAYI_KODU" />
                    <asp:BoundField DataField="BAYI_ISIM" HeaderText="BAYI_ISIM" SortExpression="BAYI_ISIM" />
                    <asp:BoundField DataField="FIRMA_ADI" HeaderText="FIRMA_ADI" SortExpression="FIRMA_ADI" />
                    <asp:BoundField DataField="VERGI_NO" HeaderText="VERGI_NO" SortExpression="VERGI_NO" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [BAYI_KODU], [BAYI_ISIM], [FIRMA_ADI], [VERGI_NO] FROM [TBLCRM_BAYISB]"></asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
