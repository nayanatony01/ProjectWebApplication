<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="editproduct.aspx.cs" Inherits="ProjectWebApplication.editproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .myGrid {
            border-collapse: collapse;
            width: 100%;
            border: 2px solid black; /* outer table border */
        }

        /* All cells default 1px border */
        .myGrid td, .myGrid th {
            border: 1px solid black;
            padding: 5px;
        }

        /* Entire first row 2px border */
        .myGrid tr:first-child td,
        .myGrid tr:first-child th {
            border: 2px solid black;
        }

        /* Vertical borders between all columns */
        .myGrid td + td,
        .myGrid th + th {
            border-left: 2px solid black;
        }
        .auto-style1 {
            width: 34px;
        }
        .auto-style2 {
            width: 1353px;
        }
        .auto-style3 {
            width: 34px;
            height: 32px;
        }
        .auto-style4 {
            width: 1353px;
            height: 32px;
        }
        .auto-style5 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4">
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="product_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="108%" CssClass="myGrid" AutoGenerateColumns="False">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="name" HeaderText="Product name">
                        <HeaderStyle ForeColor="#3333CC" />
                        </asp:BoundField>
                        <asp:BoundField DataField="brand" HeaderText="Product brand">
                        <HeaderStyle ForeColor="#3333CC" />
                        </asp:BoundField>
                        <asp:BoundField DataField="description" HeaderText="Product description">
                        <HeaderStyle ForeColor="#3333CC" />
                        </asp:BoundField>
                        <asp:BoundField DataField="price" HeaderText="Product price">
                        <HeaderStyle ForeColor="#3333CC" />
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="image" HeaderText="Product image">
                            <ControlStyle Height="150px" Width="150px" />
                            <HeaderStyle ForeColor="#3333CC" />
                        </asp:ImageField>
                        <asp:BoundField DataField="product_stock" HeaderText="Product stock">
                        <HeaderStyle ForeColor="#3333CC" />
                        </asp:BoundField>
                        <asp:BoundField DataField="product_status" HeaderText="Product status">
                        <HeaderStyle ForeColor="#3333CC" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Update image">
                            <ItemTemplate>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <asp:HiddenField ID="HiddenField1" runat="server" />
                                <br />
                                <br />
                                <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Bind("image") %>' Width="150px" />
                            </ItemTemplate>
                            <HeaderStyle ForeColor="#3333CC" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
