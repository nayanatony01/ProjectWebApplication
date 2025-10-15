<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="editcategory.aspx.cs" Inherits="ProjectWebApplication.editcategory" %>
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
        .auto-style3 {
            width: 1160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="category_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AutoGenerateColumns="False" CssClass="myGrid" Width="125%">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="category_name" HeaderText="Category name">
                        <HeaderStyle ForeColor="#3333CC" />
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="category_img" HeaderText="Category image">
                            <ControlStyle Height="150px" Width="150px" />
                            <HeaderStyle ForeColor="#3333CC" />
                        </asp:ImageField>
                        <asp:BoundField DataField="category_description" HeaderText="Category description">
                        <HeaderStyle ForeColor="#3333CC" />
                        </asp:BoundField>
                        <asp:BoundField DataField="category_status" HeaderText="Category status">
                        <HeaderStyle ForeColor="#3333CC" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Update image">
                            <ItemTemplate>
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                                <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Bind("category_img") %>' />
                                <br />
                                <br />
                                <asp:Image ID="Image2" runat="server" Height="156px" ImageUrl='<%# Bind("category_img") %>' Width="185px" />
                            </ItemTemplate>
                            <HeaderStyle ForeColor="#3333CC" />
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <table class="w-100">
                            <tr>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("category_img") %>' />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="129px" ImageUrl='<%# Bind("category_img") %>' Width="133px" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
