<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangkytaikhoan.aspx.cs" Inherits="T3K22.Dangkytaikhoan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 237px;
        }
        .auto-style3 {
            width: 197px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="3">Đăng ký tài khoản&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">User name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtus" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvus" runat="server" ControlToValidate="txtus" ErrorMessage="Bạn chưa nhập tên đăng ký" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtpw" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvpw" runat="server" ControlToValidate="txtpw" ErrorMessage="bạn chưa nhập mật khẩu">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">ConfirmPassword</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtconf" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvconf" runat="server" ControlToValidate="txtconf" ErrorMessage="Bạn chưa nhập lại mật khẩu">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvconf" runat="server" ControlToCompare="txtpw" ControlToValidate="txtconf" ErrorMessage="Nhập mật khẩu không đúng">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Tuổi</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txttuoi" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="rvtuoi" runat="server" ControlToValidate="txttuoi" ErrorMessage="Tuổi nhập vào không chính xác" MaximumValue="120" MinimumValue="5" Type="Integer">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="revemail" runat="server" ControlToValidate="txtemail" ErrorMessage="Bạn nhập vào mail chưa chính xác" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Ngày sinh</td>
                <td class="auto-style2">Ngày
                    <asp:DropDownList ID="ddlngay" runat="server">
                    </asp:DropDownList>
                    Tháng<asp:DropDownList ID="ddlthang" runat="server">
                    </asp:DropDownList>
                    Năm<asp:DropDownList ID="ddlnam" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btndk" runat="server" Text="Đăng ký" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:ValidationSummary ID="vstonghoploi" runat="server" Height="38px" />
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
