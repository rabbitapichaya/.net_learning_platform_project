<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="test1.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
            background-color: #ffffff;
        }

        .main {
            padding-top: 20px;
            font-family: Arial, Helvetica, sans-serif
        }

        header {
            position: fixed;
            top: 0px;
            right: 0px;
            left: 0px;
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

        .content_card {
            margin-top: 50px;
            
            margin-left: 175px;
            padding: 10px 10px 10px 10px;
            display: block;
            background-color: rgb(247 251 251);
            box-shadow: 5px 5px 5px 5px rgb(82 82 82 / 0.25)
        }
        .rabbit{
            padding-top: 20px;
        }
    </style>
    <script src="https://kit.fontawesome.com/c4e3f4f267.js" crossorigin="anonymous"></script>
    <meta charset="utf-8" />
    <title>Admin Page</title>
    <link href="style.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <header>
            <i class="fa fa-bars menu-toggle"></i>
            <ul>
                <li>
                    <a href="#"> <i class="fa fa-user"></i> User <i class="fa fa-chevron-down"></i></a>
                    <ul>
                        <li><a href="MainPage.aspx" class="Logout">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </header>
        <div class="main">
            <div class="row">
                <div class="col">
                    <div class="sidebar">
                        <div class="card_body">
                            <img src="image/icons8_male_user_96px.png" class="rounded-circle" width="140"/>
                            <div class="things">
                                <h3>Admin Name : Apichaya Nivasabutr</h3>
                                </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 mt-1">
                    <div class="content_card">
                        <form id="form2" runat="server">
        <div>
            Search: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>&nbsp;<asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal"><asp:ListItem Value="full_name">Name</asp:ListItem><asp:ListItem Value="user_id">User ID</asp:ListItem></asp:RadioButtonList>&nbsp;<asp:Button ID="Button2" runat ="server" Text="Search" OnClick="Button1_Click"/>

        </div>
        <div class="rabbit">           
            <asp:PlaceHolder ID="PlaceHolder2"  runat="server"></asp:PlaceHolder>
        </div>
    </form>


                    </div>
                </div>
            </div>
        </div>
    </div>  
                                
    
    
                            
</body>
</html>
