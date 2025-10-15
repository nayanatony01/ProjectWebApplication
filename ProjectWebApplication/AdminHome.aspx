<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="ProjectWebApplication.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
            width: 114px;
        }
        .auto-style2 {
            height: 32px;
            text-align: left;
        }
        .auto-style3 {
            width: 114px;
        }
        .auto-style4 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#3366FF" Text="Admin Dashboard"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2">
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/addcategory.aspx">Add Category...</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/addproduct.aspx">Add Product...</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/editcategory.aspx">Edit Category...</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style4">
                <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/editproduct.aspx">Edit Product...</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/ViewFeedback.aspx">View Feedback...</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/usermngmt.aspx">User Management...</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>  