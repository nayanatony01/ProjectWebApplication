<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectWebApplication.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /* Background setup */
        body {
            background: #ffeef5;
            font-family: 'Montserrat', sans-serif;
            height: 100vh;
            margin: 0;
        }

        /* Center container */
        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
        }

        /* Login box styling */
        .login-box {
            background-color: #fff;
            border-radius: 16px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            width: 450px;
            padding: 40px 35px;
            text-align: left; /* Align content to left */
            transition: transform 0.3s ease;
        }

        .login-box:hover {
            transform: translateY(-5px);
        }

        /* Header */
        .login-box h2 {
            color: #E4527E;
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 25px;
            text-align: center; /* Header centered */
        }

        /* Labels */
        .login-box label {
            color: #444;
            font-weight: 600;
            margin-bottom: 6px;
            font-size: 15px;
        }

        /* Inputs */
        .login-box input[type="text"],
        .login-box input[type="password"] {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            margin-bottom: 5px; /* small space above error */
            font-size: 14px;
            outline: none;
            transition: border 0.2s ease;
        }

        .login-box input[type="text"]:focus,
        .login-box input[type="password"]:focus {
            border-color: #E4527E;
            box-shadow: 0 0 5px rgba(228, 82, 126, 0.3);
        }

        /* Button styling */
        .login-box .login-btn {
            background-color: #E4527E;
            color: #fff;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            padding: 10px 20px;
            width: 100%;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
            margin-top: 10px;
        }

        .login-box .login-btn:hover {
            background-color: #d43f6a;
            transform: scale(1.03);
        }

        /* Error labels */
        .error {
            color: red;
            font-size: 13px;
            display: block;
            margin-bottom: 10px;
        }

        /* Small bottom text */
        .login-box .small-text {
            color: #777;
            font-size: 13px;
            margin-top: 15px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-container">
        <div class="login-box">
            <h2>Welcome Back</h2>

            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Username is required" CssClass="error"></asp:RequiredFieldValidator>

            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Password is required" CssClass="error"></asp:RequiredFieldValidator>

            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="login-btn" OnClick="Button1_Click" />

            <asp:Label ID="Label3" runat="server" CssClass="error" Visible="False"></asp:Label>

        </div>
    </div>
</asp:Content>
