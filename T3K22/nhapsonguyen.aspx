<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nhapsonguyen.aspx.cs" Inherits="T3K22.nhapsonguyen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nhập số nguyên 0 - 9<asp:TextBox ID="txtso" runat="server"></asp:TextBox>
            <br />
            Kết quả đọc số<asp:TextBox ID="txtdocso" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btndoc" runat="server" OnClick="btndoc_Click" Text="Đọc" />
        </div>
    </form>
</body>
</html>
