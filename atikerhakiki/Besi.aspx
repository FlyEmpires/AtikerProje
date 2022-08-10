<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Besi.aspx.cs" Inherits="atikerhakiki.Besi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style6" border="1">

        <tr>
            <td>&nbsp &nbsp &nbsp Küpe NO:</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

<%--            <td><input type="text" class="bosluk" name="no" placeholder="Lütfen Stok No Giriniz"/></td>--%>
        </tr>

        <tr>
            <td class="auto-style4">&nbsp; &nbsp;&nbsp; &nbsp;Besi Adı:</td>

            <td class="auto-style4"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style5">&nbsp &nbsp &nbsp Besi Cinsi:</td>
            <td class="auto-style5"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style1">&nbsp &nbsp &nbsp Doğum Tarihi:</td>
            <td class="auto-style1"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>&nbsp; &nbsp; &nbsp;
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [REC_DATE], [REC_USERNAME], [ARAC_PLAKA], [ARAC_MODEL], [ARAC_MARKA] FROM [TBLARACSB]"></asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Doğum KG</td>
            <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>

    </table>
        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="KUPE_NO" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="KUPE_NO" HeaderText="KUPE_NO" ReadOnly="True" SortExpression="KUPE_NO" />
                <asp:BoundField DataField="BESI_ADI" HeaderText="BESI_ADI" SortExpression="BESI_ADI" />
                <asp:BoundField DataField="BESI_CINSI" HeaderText="BESI_CINSI" SortExpression="BESI_CINSI" />
                <asp:BoundField DataField="DOGUM_TARIHI" HeaderText="DOGUM_TARIHI" SortExpression="DOGUM_TARIHI" />
                <asp:BoundField DataField="DOGUM_KG" HeaderText="DOGUM_KG" SortExpression="DOGUM_KG" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [KUPE_NO], [BESI_ADI], [BESI_CINSI], [DOGUM_TARIHI], [DOGUM_KG] FROM [TBLBESISB]"></asp:SqlDataSource>
    </form>
</body>
</html>
