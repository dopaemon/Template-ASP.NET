<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mang.aspx.cs" Inherits="T3K22.mang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nhập mảng<asp:TextBox ID="txtnhap" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblpt" runat="server" Text="Phần tử thứ: "></asp:Label>
            <br />
            <asp:Button ID="btnmang" runat="server" OnClick="btnmang_Click" style="width: 48px" Text="Mảng" />
        </div>
    </form>
</body>
</html>
