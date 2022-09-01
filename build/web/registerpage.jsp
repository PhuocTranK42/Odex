<%-- 
    Document   : registerpage
    Created on : Aug 4, 2022, 2:18:02 PM
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
        <title>Register - Odex</title>
    </head>
    <body>
        <%@include file="./inc/header.jsp" %>
        <div class="banner dark">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="text-center">
                            <h2 class="banner__content">Register</h2>
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
                                        <a href="RegisterServlet">
                                            Register
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
        <section>
            <div class="container">
                <div class="row justify-content-center selection">
                    <div class="col-lg-6 col-md-12 col-sm-12">
                        <div class="login_signup">
                            <h3 class="login_sec_title">Create An Account</h3>
                            <form action="RegisterServlet" method="post">
                                <div class="row">
                                    <span>${error}</span>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-group">
                                            <label>Email Address</label>
                                            <input type="email" class="form-control" name="email" placeholder="Vui lòng nhập email">
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="password" class="form-control" name="password" placeholder="Vui lòng nhập password">
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="login_flex">
                                            <div class="login_flex_1">
                                                <input id="news" class="checkbox-custom" name="news"
                                                       type="checkbox">
                                                <label for="news" class="checkbox-custom-label">Sign Up for
                                                    Newsletter</label>
                                            </div>
                                            <div class="login_flex_2">
                                                <div class="form-group mb-0">
                                                    <button type="submit" class="btn btn-md btn-theme">Sign
                                                        Up</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-md btn-theme">
                                                Sign In
                                                <a href="LoginServlet"></a>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="./inc/footer.jsp" %>
    </body>
</html>
