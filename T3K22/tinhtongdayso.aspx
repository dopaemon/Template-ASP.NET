<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tinhtongdayso.aspx.cs" Inherits="T3K22.tinhtongdayso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nhập vào số tự nhiên<asp:TextBox ID="txtso" runat="server"></asp:TextBox>
            <asp:Button ID="btntinhtong" runat="server" OnClick="btntinhtong_Click" Text="Tính tổng" />
            <br />
            Kết quả: <asp:TextBox ID="txttong" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
