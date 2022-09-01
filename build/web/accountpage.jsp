<%-- 
    Document   : accountpage
    Created on : Aug 2, 2022, 5:34:13 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <link rel="stylesheet" href="./public/css/accountpage.css">
        <title>My Account - Odex</title>
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
                                        <li class="breadcrumb-item active">
                                            <a href="AccountServlet">
                                                My Account
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
                <div class="container selection">
                    <div class="row justify-content-center">
                        <div class="col-lg-6 col-md-12 col-sm-12">
                            <div class="login_signup">
                                <div>
                                    <ul>
                                        <li>
                                            <a href="LoginServlet">
                                                <h3 class="login_sec_title">Sign In</h3>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12">
                            <div class="login_signup">
                                <div>
                                    <ul>
                                        <li>
                                            <a href="RegisterServlet">
                                                <h3 class="login_sec_title">Create An Account</h3>
                                            </a>
                                        </li>
                                    </ul>
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
