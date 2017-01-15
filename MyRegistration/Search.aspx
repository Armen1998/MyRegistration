<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="MyRegistration.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 91px;
        }
        .auto-style4 {
            width: 91px;
            height: 25px;
        }
        .auto-style5 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        Search Required People<br />
        Please write valid First Name and Last Name<br />
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">First Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_fname_search" runat="server" BorderColor="#CCCCCC" BorderStyle="Double"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3">Last Name:</td>
                <td>
                    <asp:TextBox ID="txt_lname_search" runat="server" BorderColor="#CCCCCC" BorderStyle="Double"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" BorderColor="#CCCCCC" BorderStyle="Double" OnClick="Button1_Click" Text="Back" Width="89px" />
                </td>
                <td>
                    <asp:Button ID="btn_search" runat="server" BorderColor="#CCCCCC" BorderStyle="Double" OnClick="btn_search_Click" Text="Search" Width="130px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSourceSearch" runat="server"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridViewSearch" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"   >
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
