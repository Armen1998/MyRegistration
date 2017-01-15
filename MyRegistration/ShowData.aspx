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
        .auto-style5 {
            width: 127px;
        }
        .auto-style6 {
            height: 23px;
            width: 127px;
        }
        .auto-style7 {
            width: 179px;
        }
        .auto-style8 {
            height: 23px;
            width: 179px;
        }
        .auto-style9 {
            width: 443px;
        }
        .auto-style10 {
            height: 23px;
            width: 443px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataMyregistration" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Surname], [MathAnaliz], [Kirmex], [Matlab] FROM [Myregistre]"></asp:SqlDataSource>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumn ="false" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None"  AllowSorting ="True" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataMyregistration" >
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"  />
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

        <asp:Button ID="btn_sort_Click" runat="server" OnClick="btn_sort_Click_Click" Text="Sort" Width="77px" />

        <table class="auto-style1">
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:RadioButton ID="radio_btn_kirmex" GroupName="Sort" runat="server" Text="By Kirmex" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="radio_btn_matlab" GroupName="Sort" runat="server" Text="By Matlab" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="radio_btn_matanal" GroupName="Sort" runat="server" Text="By Math Analiz" />
                    </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btn_selectforsort" runat="server" OnClick="btn_selectforsort_Click" Text="Select" Width="107px" style="height: 26px" />
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
