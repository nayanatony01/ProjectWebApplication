<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reply.aspx.cs" Inherits="ProjectWebApplication.Reply" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Feedback - BabyCare</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@600;700&family=Montserrat:wght@200;400;600&display=swap" rel="stylesheet"> 

    <!-- Icon Fonts -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries CSS -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template CSS -->
    <link href="css/style.css" rel="stylesheet">

    <!-- Custom Simple Styling -->
    <style type="text/css">
        body {
            font-family: 'Montserrat', sans-serif;
            background-color:#ffecf2;
            margin: 0;
            padding: 0;
        }

        table {
            margin: 60px auto;
            background-color: #fff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        td {
            padding: 10px 5px;
            vertical-align: top;
        }

        asp\:Label {
            font-weight: 600;
            font-size: 16px;
            display: block;
            margin-bottom: 5px;
        }

        #Label1 {
            font-size: 32px;
            text-align: center;
            margin-bottom: 20px;
            display: block;
        }

        asp\:TextBox {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            width: 100%;
            box-sizing: border-box;
            font-size: 14px;
        }

        asp\:TextBox[TextMode="MultiLine"] {
            resize: vertical;
        }

        asp\:Button {
            background-color: #E4527E;
            color: #fff;
            border: none;
            padding: 10px 25px;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        asp\:Button:hover {
            background-color: #c43d66;
        }

        asp\:RequiredFieldValidator {
            display: block;
            margin-top: 3px;
            font-size: 13px;
            color: #cc0000;
        }

        @media (max-width: 768px) {
            table {
                width: 90%;
                padding: 20px;
            }

            asp\:TextBox {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <!-- Navbar Start -->
        <div class="container-fluid border-bottom bg-light wow fadeIn" data-wow-delay="0.1s">
            <div class="container topbar bg-primary d-none d-lg-block py-2" style="border-radius: 0 40px">
                <div class="d-flex justify-content-between">
                    <div class="top-info ps-2">
                        <small class="me-3"><i class="fas fa-map-marker-alt me-2 text-secondary"></i> <a href="#" class="text-white">123 Street, New York</a></small>
                        <small class="me-3"><i class="fas fa-envelope me-2 text-secondary"></i><a href="#" class="text-white">Email@Example.com</a></small>
                    </div>
                    <div class="top-link pe-2">
                        <a href="#" class="btn btn-light btn-sm-square rounded-circle"><i class="fab fa-facebook-f text-secondary"></i></a>
                        <a href="#" class="btn btn-light btn-sm-square rounded-circle"><i class="fab fa-twitter text-secondary"></i></a>
                        <a href="#" class="btn btn-light btn-sm-square rounded-circle"><i class="fab fa-instagram text-secondary"></i></a>
                        <a href="#" class="btn btn-light btn-sm-square rounded-circle me-0"><i class="fab fa-linkedin-in text-secondary"></i></a>
                    </div>
                </div>
            </div>
            <div class="container px-0">
                <nav class="navbar navbar-light navbar-expand-xl py-3">
                    <a href="index.html" class="navbar-brand"><h1 class="text-primary display-6">Baby<span class="text-secondary">Care</span></h1></a>
                    <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars text-primary"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <div class="navbar-nav mx-auto">
                            <a href="Login.aspx" class="nav-item nav-link">Login</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Register</a>
                                <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                    <a href="userReg.aspx" class="dropdown-item">User</a>
                                    <a href="adminreg.aspx" class="dropdown-item">Admin</a>
                                </div>
                            </div>
                            <a href="program.html" class="nav-item nav-link">Programs</a>
                            <a href="event.html" class="nav-item nav-link">Events</a> 
                            <a href="contact.html" class="nav-item nav-link">Contact</a>
                        </div>
                        <div class="d-flex me-4">
                            <div id="phone-tada" class="d-flex align-items-center justify-content-center">
                                <a href="#" class="position-relative wow tada" data-wow-delay=".9s">
                                    <i class="fa fa-phone-alt text-primary fa-2x me-4"></i>
                                    <div class="position-absolute" style="top: -7px; left: 20px;">
                                        <span><i class="fa fa-comment-dots text-secondary"></i></span>
                                    </div>
                                </a>
                            </div>
                            <div class="d-flex flex-column pe-3 border-end border-primary">
                                <span class="text-primary">Have any questions?</span>
                                <a href="#"><span class="text-secondary">Free: + 0123 456 7890</span></a>
                            </div>
                        </div>
                        <button class="btn-search btn btn-primary btn-md-square rounded-circle" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search text-white"></i></button>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->

  <!-- Form Card Start -->
<div class="container mt-5 mb-5">
    <div class="row justify-content-center">
        <div class="col-lg-6 col-md-8">
            <div class="card shadow-sm p-4" style="border-radius: 12px; background-color: #fff;">
                
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                           ForeColor="#E4527E" CssClass="text-center d-block mb-4" Text="Send Email"></asp:Label>

                <div class="mb-3">
                    <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="To"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" 
                        ErrorMessage="Please enter recipient's email" ForeColor="#CC0000" CssClass="d-block mt-1"></asp:RequiredFieldValidator>
                </div>

                <div class="mb-3">
                    <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="From"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" 
                        ErrorMessage="Please enter your email" ForeColor="#CC0000" CssClass="d-block mt-1"></asp:RequiredFieldValidator>
                </div>

                <div class="mb-3">
                    <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Subject"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" 
                        ErrorMessage="Please enter subject" ForeColor="#CC0000" CssClass="d-block mt-1"></asp:RequiredFieldValidator>
                </div>

                <div class="mb-3">
                    <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Body"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="6"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" 
                        ErrorMessage="Please enter message" ForeColor="#CC0000" CssClass="d-block mt-1"></asp:RequiredFieldValidator>
                </div>

                <div class="text-end">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Font-Bold="True" Text="Send Email" OnClick="Button1_Click" />
                </div>

                <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>

            </div>
        </div>
    </div>
</div>
<!-- Form Card End -->


    </form>
</body>
</html>
