<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="ProjectWebApplication.UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background: #ffecf2;
        }
        .category-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 25px;
            padding: 30px;
        }

        .category-card {
            background-color: #ffffff;
            border: 1px solid #e0e0e0;
            border-radius: 12px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            width: 240px;
            padding: 15px;
        }

        .category-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 18px rgba(0,0,0,0.2);
        }

        .category-card img {
            border-radius: 10px;
            width: 200px;
            height: 200px;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .category-card:hover img {
            transform: scale(1.05);
        }

        .category-name {
            color: #222;
            font-size: 20px;
            font-weight: bold;
            margin-top: 10px;
        }

        .category-description {
            color: #007bff;
            font-size: 14px;
            margin-top: 5px;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="category-container">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CellPadding="10" CellSpacing="20">
            <ItemTemplate>
                <div class="category-card">
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        CommandArgument='<%# Eval("category_id") %>'
                        ImageUrl='<%# Eval("category_img") %>'
                        OnCommand="ImageButton1_Command" 
                        AlternateText='<%# Eval("category_name") %>' Height="200px" Width="200px" />
                    
                    <div class="category-name">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("category_name") %>'></asp:Label>
                    </div>
                    <div class="category-description">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("category_description") %>'></asp:Label>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
