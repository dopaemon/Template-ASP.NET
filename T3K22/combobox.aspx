<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="combobox.aspx.cs" Inherits="T3K22.combobox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblnoidung" runat="server" ForeColor="Blue" Text="Xin chào lớp T3K21"></asp:Label>
            <br />
            Chọn màu:<asp:DropDownList ID="ddlmau" runat="server">
                <asp:ListItem>red</asp:ListItem>
                <asp:ListItem>yellow</asp:ListItem>
                <asp:ListItem>blue</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Button ID="btndoimau" runat="server" OnClick="btndoimau_Click" Text="Đổi màu" />
        </div>
    </form>
</body>
</html>
