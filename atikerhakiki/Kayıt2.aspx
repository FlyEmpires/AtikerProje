<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kayıt2.aspx.cs" Inherits="atikerhakiki.Kayıt2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table class="metin" border="1">

        <tr>
            <td>&nbsp &nbsp &nbsp Stok Adı :</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

<%--            <td><input type="text" class="bosluk" name="no" placeholder="Lütfen Stok No Giriniz"/></td>--%>
        </tr>

        <tr>
            <td>&nbsp; &nbsp; &nbsp; Stok Tipi:</td>

            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>&nbsp &nbsp &nbsp Stok Kısa Adı :</td>
            <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>&nbsp &nbsp &nbsp Stok Kodu :</td>
            <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>&nbsp; &nbsp; &nbsp; Perakende Alış KDV </td>
            <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>

    </table>





        </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="KAYDET" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 55px" Text="SİL" Width="60px" />
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATIKERConnectionString %>" SelectCommand="SELECT [STOK_ADI], [STOK_TIPI], [STOK_KISA_ADI], [STOK_KODU], [PERAKENDE_ALIS_KDV] FROM [TBLSTOKSB]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STOK_KODU" DataSourceID="SqlDataSource1" Height="240px" style="margin-top: 109px">
            <Columns>
                <asp:BoundField DataField="STOK_ADI" HeaderText="STOK_ADI" SortExpression="STOK_ADI" />
                <asp:BoundField DataField="STOK_TIPI" HeaderText="STOK_TIPI" SortExpression="STOK_TIPI" />
                <asp:BoundField DataField="STOK_KISA_ADI" HeaderText="STOK_KISA_ADI" SortExpression="STOK_KISA_ADI" />
                <asp:BoundField DataField="STOK_KODU" HeaderText="STOK_KODU" ReadOnly="True" SortExpression="STOK_KODU" />
                <asp:BoundField DataField="PERAKENDE_ALIS_KDV" HeaderText="PERAKENDE_ALIS_KDV" SortExpression="PERAKENDE_ALIS_KDV" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
