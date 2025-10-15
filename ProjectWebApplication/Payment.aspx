<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="ProjectWebApplication.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            font-family: 'Montserrat', sans-serif;
            background: #ffeef5;
        }

        /* Container */
        .payment-container {
            max-width: 800px;
            margin: 50px auto;
            padding: 25px;
            border-radius: 15px;
            background-color: #fff;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
        }

        /* Heading Payment */
        .payment-heading {
            display: block;              /* ensures label behaves like a full-width element */
            text-align: center;   
            font-size: xx-large;
            font-weight: bold;
            color: #E4527E; /* same as original */
            margin-bottom: 20px;
        }

        /* Labels */
        .form-label {
            font-weight: 600;
            color: #333;
        }

        /* Textboxes */
        .form-control-custom {
            border-radius: 6px;
            border: 1px solid #ccc;
            padding: 5px 8px;
            width: 200px; /* reduced width */
        }

        /* Buttons */
        .btn-custom {
            background-color: #3366FF;
            color: #fff;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            padding: 8px 15px;
            cursor: pointer;
            transition: 0.3s;
        }
        .btn-custom:hover {
            background-color: #254eda;
        }

        /* Account Details Panel */
        .account-panel {
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 15px;
            background-color: #f9f9f9;
            margin-top: 20px;
        }

        .account-panel-heading {
            font-size: x-large;
            font-weight: bold;
            color: #3366FF;
            margin-bottom: 10px;
        }
        .auto-style1 {
            border-radius: 6px;
            border: 1px solid #ccc;
            padding: 5px 8px;
        }
        .auto-style3 {
            width: 430px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="payment-container">
        <!-- Payment Heading -->
        <asp:Label ID="Label3" runat="server" CssClass="payment-heading" Text="Payment"></asp:Label>

        <!-- Payment Table -->
        <table>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="padding-left:20px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="padding-left:20px;">
                    <label class="form-label">Payment Amount</label><br />
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style1" Width="258px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="padding-left:20px;">
                    <label class="form-label">Account No</label><br />
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style1" Width="257px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding-top:15px;">
                    <asp:Button ID="Button2" runat="server" CssClass="btn-custom" Text="Pay Now" OnClick="Button2_Click" />
                    <asp:Button ID="Button1" runat="server" CssClass="btn-custom" Text="Add Account Details" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>

        <!-- Account Details Panel -->
        <asp:Panel ID="Panel1" runat="server" CssClass="account-panel" Visible="False">
            <div class="account-panel-heading">Account Details</div>
            <table>
                <tr>
                    <td><label class="form-label">Account Type</label></td>
                    <td class="auto-style3"><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control-custom"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><label class="form-label">Account No</label></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control-custom" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" ForeColor="#CC0000" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><label class="form-label">Balance Amount</label></td>
                    <td class="auto-style3"><asp:TextBox ID="TextBox3" runat="server" CssClass="form-control-custom"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-top:10px;">
                        <asp:Button ID="Button3" runat="server" CssClass="btn-custom" Text="Add" OnClick="Button3_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <!-- Keep the Label as it is because backend code uses it -->
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</asp:Content>
