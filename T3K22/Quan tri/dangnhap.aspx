<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="T3K22.Quan_tri.dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 176px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Trang đăng nhập<br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Tên đăng nhập</td>
                    <td>
                        <asp:TextBox ID="txttendn" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Mật khẩu</td>
                    <td>
                        <asp:TextBox ID="txtmk" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btndangnhap" runat="server" OnClick="btndangnhap_Click" Text="Đăng nhập" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbltb" runat="server" Text="Thông báo"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
