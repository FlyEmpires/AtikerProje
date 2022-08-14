<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MuhasebeFis.aspx.cs" Inherits="atikerhakiki.MuhasebeFis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 106px">
    <form id="form1" runat="server">
        <div>
             <table class="auto-style2" border="1">

        <tr>
            <td>&nbsp &nbsp &nbsp Belge Numarası:</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

<%--            <td><input type="text" class="bosluk" name="no" placeholder="Lütfen Stok No Giriniz"/></td>--%>
        </tr>

        <tr>
            <td class="auto-style4">&nbsp; &nbsp;&nbsp; &nbsp;Fiş Numarası:</td>

            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style5">&nbsp &nbsp &nbsp Tarih:</td>
            <td><asp:TextBox ID="TextBox3" runat="server" Width="162px"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style1">&nbsp; &nbsp; &nbsp; Şube Kodu:</td>
            <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>&nbsp; &nbsp; &nbsp;
                Fiş Tipi:</td>
            <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>

    </table>
        </div>
    </form>
</body>
</html>
