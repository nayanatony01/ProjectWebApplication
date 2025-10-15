<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewproducts.aspx.cs" Inherits="ProjectWebApplication.viewproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background-color: #f8f9fa;
        }

        .product-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
            padding: 30px;
        }

        .product-item {
            text-align: center;
            width: 220px;
            padding: 10px;
        }

        /* ImageButton renders as input[type=image] */
        .product-item input[type="image"] {
            width: 200px;
            height: 200px;
            border-radius: 10px;
            object-fit: cover;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border: none;
        }

        /* Hover effect */
        .product-item input[type="image"]:hover {
            transform: translateY(-8px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            cursor: pointer;
        }

        .product-name {
            font-weight: bold;
            color: #222;
            font-size: 18px;
            margin-top: 10px;
        }

        .product-price {
            color: #28a745;
            font-size: 16px;
            margin-top: 4px;
        }

        .product-description {
            color: #007bff;
            font-size: 14px;
            margin-top: 5px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="product-list">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CellPadding="10" CellSpacing="20">
            <ItemTemplate>
                <div class="product-item">
                    <asp:ImageButton ID="ImageButton1" runat="server"
                        Height="200px" Width="200px"
                        ImageUrl='<%# Eval("image") %>'
                        CommandArgument='<%# Eval("product_id") %>'
                        OnCommand="ImageButton1_Command"
                        AlternateText='<%# Eval("name") %>' />

                    <div class="product-name">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </div>

                    <div class="product-price">
                        ₹<asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </div>

                    <div class="product-description">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
