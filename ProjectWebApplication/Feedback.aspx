<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="ProjectWebApplication.Feedback" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Feedback - BabyCare</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@600;700&family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet"> 

    <!-- FontAwesome / Bootstrap Icons -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet" />

    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background: linear-gradient(to right, #f8f9fa, #fff);
        }
        .feedback-card {
            max-width: 700px;
            margin: 80px auto;
            border: none;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
            border-radius: 20px;
        }
        .feedback-header {
            background-color: #E4527E;
            color:  #fff;
            border-radius: 20px 20px 0 0;
            text-align: center;
            padding: 25px;
        }
        .feedback-header h2 {
            font-family: 'Fredoka', sans-serif;
            font-weight: 700;
            margin-bottom: 0;
            color: #393d72;
        }
        .form-label {
            font-weight: 600;
            color: #333;
        }
        .btn-feedback {
            background-color: #E4527E;
            color: #fff;
            font-weight: bold;
            border-radius: 8px;
            transition: 0.3s;
        }
        .btn-feedback:hover {
            background-color: #d53b6d;
            transform: translateY(-2px);
        }
        .thankyou-label {
            color: #28a745;
            font-weight: 600;
            display: block;
            text-align: center;
            margin-top: 15px;
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
                            <a href="Feedback.aspx" class="nav-item nav-link">Feedback</a>
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

        <!-- Feedback Section -->
        <div class="card feedback-card">
            <div class="feedback-header">
                <h2><i class="fas fa-comment-dots me-2"></i> Feedback Form</h2>
                <p class="mb-0 small">We value your thoughts and suggestions!</p>
            </div>
            <div class="card-body p-4">
                <div class="mb-3">
                    <label for="TextBox1" class="form-label">Please provide your feedback:</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" 
                        TextMode="MultiLine" Rows="5" placeholder="Write your feedback here..."></asp:TextBox>
                </div>
                <div class="text-center">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-feedback px-4 py-2" 
                        Text="Submit Feedback" OnClick="Button1_Click" />
                </div>
                <asp:Label ID="Label3" runat="server" Visible="False" CssClass="thankyou-label"></asp:Label>
            </div>
        </div>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </form>
</body>
</html>
