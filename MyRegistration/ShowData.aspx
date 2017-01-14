<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowData.aspx.cs" Inherits="MyRegistration.ShowData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataMyregistration" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Surname], [MathAnaliz], [Kirmex], [Matlab] FROM [Myregistre]"></asp:SqlDataSource>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataMyregistration" GridLines="None">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                <asp:BoundField DataField="MathAnaliz" HeaderText="MathAnaliz" SortExpression="MathAnaliz" />
                <asp:BoundField DataField="Kirmex" HeaderText="Kirmex" SortExpression="Kirmex" />
                <asp:BoundField DataField="Matlab" HeaderText="Matlab" SortExpression="Matlab" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:Button ID="btn_back" runat="server" OnClick="btn_back_Click" Text="Back" Width="101px" />
        <asp:Button ID="btn_search" runat="server" Text="Search" Width="99px" OnClick="btn_search_Click" Height="26px" />
        <asp:Button ID="btn_sort" runat="server" Text="Sort" Width="94px" OnClick="btn_sort_Click" />
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:SqlDataSource ID="SqlDataSourceSort" runat="server"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView2" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSourceSort" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
