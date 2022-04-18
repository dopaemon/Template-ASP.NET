<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="T3K22.sanpham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            text-align:center;
        }
        .auto-style3 {
            width: 100px;
        }
        .dinhnen{
            background-color:hotpink;
            font-weight:bold;
        }
        .dinhdangtrang{
            width:800px;
            margin: 0 auto;

        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        
        <div class="dinhdangtrang">
        <asp:DataList ID="dlsanpham" runat="server" RepeatColumns="3">
            <ItemTemplate>
                <table class="auto-style1" border="1">
                    <tr>
                        <td class="auto-style3">Mã sản phẩm:</td>
                        <td>
                            <asp:Label ID="lblma" runat="server" Text='<%# Eval("masp") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Tên sản phẩm: </td>
                        <td class="dinhnen">
                            <asp:Label ID="lbltensp" runat="server" Text='<%# Eval("tensp") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Mô tả:</td>
                        <td>
                            <asp:Label ID="lblmota" runat="server" Text='<%# Eval("mota") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <br />
                            <br />
                            <br />
                            Hình ảnh:</td>
                        <td>
                            <asp:Image ID="imghinh" runat="server" Height="80px" ImageUrl='<%# "~/Quan tri/Images/" + Eval("hinhanh") %>' Width="80px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        </div>
    </form>
</body>
</html>
