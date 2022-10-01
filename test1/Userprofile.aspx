<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userprofile.aspx.cs" Inherits="test1.Userprofile" %>

<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            background-color: #ffffff;
            
        }

        .main {
            font-family: Arial, Helvetica, sans-serif
        }

        header {
            position: fixed;
            top: 0px;
            right: 0px;
            left: 0%;
            background: white;
            height: 64px;
            box-shadow: 0px 0px 10px 5px rgb(82 82 82 / 0.25)
        }

        header * {
                color: #9d9d9d;
            }

        header ul {
                float: right;
                margin: 0px;
                padding: 0px;
                list-style: none;
            }

        header ul li {
                    float: left;
                    position: relative;
                }

        header ul li ul {
                        position: absolute;
                        top: 64px;
                        right: 0px;
                        width: 180px;
                        display: none;
                    }

        header ul li:hover ul {
                        display: block;
                    }

        header ul li ul li {
                        width: 100%;
                    }

        header ul li ul li a {
                            padding: 10px;
                            background: white;
                            color: #444;
                        }

        header ul li ul li a:hover {
                                background: #d5d6d6;
                            }

        header ul li a {
                        display: block;
                        padding: 21px;
                        font-size: 1.1em;
                        text-decoration: none;
                    }

        header ul li a:hover {
                            background: #d5d6d6;
                            transition: 0.3s;
                        }

        header .menu-toggle {
                display: none;
            }

        .sidebar {
            width: 175px;
            position: fixed;
            left: 0;
            bottom: 0;
            background-color: #ff8834;
            height: 100%;
           
        }

        .card_body {
            color: ghostwhite;
            padding-left: 10px;
            list-style: none;
        }

        .card_body .things ul li a {
                
                text-decoration: none;
                color: ghostwhite;
            }

        .card_body .things ul li a:hover {
                    color: #d5d6d6;
                }

        .content_card {
            margin-top: 80px;
            margin-left: 175px;
            padding: 10px 10px 10px 10px;
            display: block;
            background-color: rgb(247 251 251);
            box-shadow: 5px 5px 5px 5px rgb(82 82 82 / 0.25)
        }
    </style>
    <script src="https://kit.fontawesome.com/c4e3f4f267.js" crossorigin="anonymous"></script>
    <meta charset="utf-8" />
    <title>User Profile</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <header>
            <i class="fa fa-bars menu-toggle"></i>
            <ul>
                <li>
                    <a href="#"> <i class="fa fa-user"></i> User <i class="fa fa-chevron-down"></i></a>
                    <ul>
                        <li><a href="LoginPage.aspx" class="Logout">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </header>
        <div class="main">
            <div class="row">
                <div class="col">
                    <div class="sidebar">
                        <div class="card_body">
                            <img src="image/icons8_male_user_96px.png" class="rounded-circle" width="140">
                            <div class="things">
                                <h3>Profile</h3>
                                <ul>
                                    <li><a href="MainPage.aspx">Home</a></li>
                                    <li><a href="Courses.aspx">Courses</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 mt-1">
                    <div class="content_card">
                        <h1 class="mt-3 pt-3">About</h1>
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                        
                        <div class="row">
                            <div class="col-md-3">
                                <h5>Student name</h5>
                            </div>
                            <div class="col-md-9 text-secondary">
                              <asp:TextBox ID="full_name" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3">
                                <h5>User ID</h5>
                            </div>
                            <div class="col-md-9 text-secondary">
                               <asp:TextBox ID="user_id" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3">
                                <h5>Email Address</h5>
                            </div>
                            <div class="col-md-9 text-secondary">
                               <asp:TextBox ID="email_address" runat="server" TextMode="Email"></asp:TextBox>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3">
                                <h5>Phone number</h5>
                            </div>
                            <div class="col-md-9 text-secondary">
                               <asp:TextBox ID="phone_number" runat="server" class="input-field" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3">
                                <h5>Gender</h5>
                            </div>
                            <div class="col-md-9 text-secondary">
                               <asp:RadioButtonList ID="gender" runat="server">
<asp:ListItem>Male</asp:ListItem>
<asp:ListItem>Female</asp:ListItem>
<asp:ListItem>Others</asp:ListItem>
</asp:RadioButtonList>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3">
                                <h5>Password</h5>
                            </div>
                            <div class="col-md-9 text-secondary">
                             <asp:TextBox ID="password" runat="server" class="input-field"></asp:TextBox>
                                <br /><br />
                                <asp:Button runat="server" class="submit-btn" Text="Update detail" OnClick="Button1_Click"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
