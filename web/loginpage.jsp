<%-- 
    Document   : loginpage
    Created on : Aug 2, 2022, 6:38:35 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
              integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
        crossorigin="anonymous"></script>
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./public/css/style.css">
        <link rel="stylesheet" href="./public/css/loginpage.css">
        <title>Login - Odex</title>
    </head>
    <body>
        <%@include file="./inc/header.jsp" %>
        <div class="container-fluid">
            <div class="banner dark">
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="text-center">
                                <h2 class="banner__content">Login</h2>
                                <div class="banner__menu">
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="HomeServlet">
                                                <i class="fa fa-home"></i>
                                            </a>
                                        </li>
                                        <li class="breadcrumb-item">
                                            <a href="AccountServlet">
                                                My Account
                                            </a>
                                        </li>                                     
                                        <li class="breadcrumb-item active">
                                            <a href="LoginServlet">
                                                Login
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--  -->
            <section class="selection">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-6 col-md-12 col-sm-12">
                            <div class="login_signup" style="background: white;">
                                <h3 class="login_sec_title">Sign In</h3>
                                <form action="LoginServlet" method="post">
                                    <div class="form-group">
                                        <label>Email Address</label>
                                        <input type="text" class="form-control" name="email">
                                    </div>

                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" class="form-control" name="password">
                                    </div>

                                    <div class="login_flex">
                                        <div class="login_flex_1">
                                            <a href="#" class="text-bold">Forget Password?</a>
                                        </div>
                                        <div class="login_flex_2">
                                            <div class="form-group mb-0">
                                                <button type="submit" class="btn btn-md btn-theme">Login</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <%@include file="./inc/footer.jsp" %>
    </body>
</html>
