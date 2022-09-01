<%-- 
    Document   : create
    Created on : Aug 12, 2022, 9:53:26 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="./public/admin/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <%@include file="../inc/navbar.jsp" %>
        <div id="layoutSidenav">            
            <%@include file="../inc/sidebar.jsp" %>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Products</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Create Product</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>

                            </div>
                            <div class="card-body">
                                <form action="CreateProductServlet" method="post">
                                    <div class="form-group">
                                        <label for="exampleInputProductName">Product Name</label>
                                        <input name="name" type="text" class="form-control" id="exampleInputProductName" aria-describedby="emailHelp" placeholder="Enter Product Name">
                                        <!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputProductDesc">Product Desc</label>
                                        <input name="desc" type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Product Desc">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPrice">Price</label>
                                        <input name="price" type="text" class="form-control" id="exampleInputPrice" aria-describedby="emailHelp" placeholder="Enter Price">
                                        <!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputQuantity">Quantity</label>
                                        <input name="quantity" type="text" class="form-control" id="exampleInputQuantity" placeholder="Enter Quantity">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputQuantity">Category Id</label>
                                        <br/>
                                        <!--<input name="quantity" type="text" class="form-control" id="exampleInputQuantity" placeholder="Enter Quantity">-->
                                        <select name="categoryId">
                                            <option selected>Choose category</option>
                                            <c:forEach items="${categoryList}" var="category">
                                                <option value="${category.id}">${category.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputImages">Images</label>
                                        <input name="img" type="text" class="form-control" id="exampleInputImages" placeholder="Enter Link Images">
                                    </div>
                                    <br/>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="./public/admin/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="./public/admin/assets/demo/chart-area-demo.js"></script>
        <script src="./public/admin/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="./public/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>
