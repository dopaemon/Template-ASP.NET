<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sohoc.aspx.cs" Inherits="T3K22.sohoc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Số nhập<br />
            Số A<asp:TextBox ID="txtA" runat="server"></asp:TextBox>
            <br />
            Số B<asp:TextBox ID="txtB" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btntim" runat="server" OnClick="btntim_Click" Text="Tìm" />
            <br />
            Số lớn nhất<asp:TextBox ID="txtlon" runat="server"></asp:TextBox>
            <br />
            Số nhỏ nhất<asp:TextBox ID="txtnho" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
