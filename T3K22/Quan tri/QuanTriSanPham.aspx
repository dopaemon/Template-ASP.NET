<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanTriSanPham.aspx.cs" Inherits="T3K22.Quan_tri.QuanTriSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 303px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            TRANG QUẢN TRỊ SẢN PHẨM<br />
            <table class="auto-style1">
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="grvhienthi" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Tên sản phẩm</td>
                    <td>
                        <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Mô tả</td>
                    <td>
                        <asp:TextBox ID="txtmota" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Giá</td>
                    <td>
                        <asp:TextBox ID="txtgia" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Hình ảnh</td>
                    <td>
                        <asp:FileUpload ID="fuphinhanh" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnthem" runat="server" OnClick="btnthem_Click" Text="Thêm" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblthongbao" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
