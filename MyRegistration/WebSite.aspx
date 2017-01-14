<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebSite.aspx.cs" Inherits="MyRegistration.WebSite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 229px;
        }
        .auto-style2 {
            width: 145px;
        }
        .auto-style3 {
            width: 145px;
            text-align: right;
        }
        .auto-style6 {
            margin-left: 5px;
        }
        .auto-style7 {
            width: 178px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" visible="True">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">First Name:</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtbox_Name" runat="server" BorderColor="#CCCCCC" BorderStyle="Double" CssClass="auto-style6" Width="160px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="label_name" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Last Name:</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtbox_Surname" runat="server" BorderColor="#CCCCCC" BorderStyle="Double" Width="160px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="label_surname" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Math Analiz:</td>
            <td class="auto-style7">
                <asp:ListBox ID="listbox_matanal" runat="server" Height="24px" Rows="1" Width="165px"></asp:ListBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Matlab</td>
            <td class="auto-style7">
                <asp:ListBox ID="listbox_matlab" runat="server" Height="24px" Rows="1" Width="165px"></asp:ListBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Kirmex</td>
            <td class="auto-style7">
                <asp:ListBox ID="listbox_kirmex" runat="server" Height="24px" Rows="1" Width="165px"></asp:ListBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="btn_submit" runat="server" BorderColor="#CCCCCC" BorderStyle="Double" OnClick="btn_submit_Click" Text="Submit" Width="130px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="btn_showdata" runat="server" BorderColor="#CCCCCC" BorderStyle="Double" Text="Show Data" Width="130px" OnClick="btn_showdata_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
