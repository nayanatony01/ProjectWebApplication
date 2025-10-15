<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewsingleproduct.aspx.cs" Inherits="ProjectWebApplication.viewsingleproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 461px;
        }
        .auto-style2 {
            width: 227px;
        }
        .auto-style3 {
            width: 330px;
        }
        .auto-style4 {
            width: 461px;
            height: 38px;
        }
        .auto-style5 {
            width: 227px;
            height: 38px;
        }
        .auto-style6 {
            height: 38px;
        }
        .auto-style7 {
            width: 43px;
        }
        .auto-style8 {
            width: 43px;
            height: 38px;
        }
        .auto-style9 {
            width: 8px;
        }
        .auto-style10 {
            width: 43px;
            height: 37px;
        }
        .auto-style11 {
            width: 461px;
            height: 37px;
        }
        .auto-style12 {
            width: 227px;
            height: 37px;
            text-align: center;
        }
        .auto-style13 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style1">
                <asp:Image ID="Image1" runat="server" Height="300px" Width="300px" />
            </td>
            <td colspan="2">
                <table class="w-100">
                    <tr>
                        <td colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" ForeColor="#FF4880" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Rs." Font-Size="Large" ForeColor="Black"></asp:Label>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Label" Font-Size="Large" ForeColor="Black"></asp:Label>
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button3" runat="server" Font-Bold="True" ForeColor="White" Height="51px" OnClick="Button3_Click" Text="Add to Cart" Width="168px" BackColor="#E4527E" BorderColor="#E4527E" />
            </td>
            <td class="auto-style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
            <td class="auto-style12">
                <asp:Label ID="Label5" runat="server" Text="Quantity" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="-" Width="37px" />
                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged" Width="82px"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="+" Width="37px" />
            </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label7" runat="server" Text="Label" Visible="False" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4"></td>
            <td class="auto-style5">
                <asp:Button ID="Button5" runat="server" Font-Bold="True" ForeColor="#E4527E" PostBackUrl="~/ViewCart.aspx" Text="View Cart" />
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="Button4" runat="server" ForeColor="#3366FF" PostBackUrl="~/UserHome.aspx" Text="Continue Shopping" Font-Bold="True" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
