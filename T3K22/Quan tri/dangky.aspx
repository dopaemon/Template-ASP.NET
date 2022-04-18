<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" Inherits="T3K22.Quan_tri.dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 185px;
        }
        .auto-style3 {
            width: 256px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Trang ký tài khoản<br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Tên đăng nhập</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvten" runat="server" ControlToValidate="txtten" ErrorMessage="Bạn phải nhập vào tên đăng nhập"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Mật khẩu</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtmk" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvmk" runat="server" ControlToValidate="txtmk" ErrorMessage="Bạn phải nhập vào mật khẩu"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Nhập lại mật khẩu</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtnhaplai" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="cvnhaplai" runat="server" ControlToCompare="txtmk" ControlToValidate="txtnhaplai" ErrorMessage="Nhập mật khẩu chưa đúng"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revremail" runat="server" ControlToValidate="txtemail" ErrorMessage="Bạn nhập email chưa đúng định dạng" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btndk" runat="server" OnClick="btndk_Click" Text="Đăng ký" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbltb" runat="server" Text="Thông báo: "></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
