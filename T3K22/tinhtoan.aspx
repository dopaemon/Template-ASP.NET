<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tinhtoan.aspx.cs" Inherits="T3K22.tinhtoan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Số A<asp:TextBox ID="txta" runat="server"></asp:TextBox>
            <br />
            Số B<asp:TextBox ID="txtb" runat="server"></asp:TextBox>
            <br />
            Kết Quả<asp:TextBox ID="txtkq" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btntong" runat="server" OnClick="btntong_Click" Text="Tổng" />
            <br />
            <asp:Label ID="lbltb" runat="server" Text="Thông báo"></asp:Label>
        </div>
    </form>
</body>
</html>
